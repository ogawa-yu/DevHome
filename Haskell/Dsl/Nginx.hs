{-# LANGUAGE ScopedTypeVariables  #-}
module Nginx ( Conf, runConf
            , http, server, location
            , index, listen
            ) where

-- 設定を組み立てるためのConfモナド
newtype Conf ctx a = Conf { unConf :: Int -> IO a }
-- Confが持つ各種基本的な性質の定義(モナドなど)
instance Functor (Conf ctx) where
    fmap f conf = Conf(fmap f . unConf conf)
instance Applicative (Conf ctx) where
    pure = Conf . const . return
    f <*> x = Conf (\n -> unConf f n <*> unConf x n)
instance Monad (Conf ctx) where
    return = pure
    x >>= f = Conf (\n -> unConf x n >>= \a -> unConf (f a) n)
-- nginx設定のコンテキストに対応する型
data GlobalCtx --グローバルコンテキスト
data HTTPCtx -- httpコンテキスト
data ServerCtx -- serverコンテキスト
data LocationCtx -- locationコンテキスト

-- Confにより組み立てた設定の実行器
runConf :: Conf GlobalCtx a -> IO a
runConf conf = unConf conf 0

-- インデント付きの１行出力
putStrLnWithIndent :: String -> Conf ctx ()
putStrLnWithIndent ss = Conf (\n -> putStrLn $ replicate n ' ' ++ ss)

-- コンテキストスイッチ
unCtx :: Conf ctx a -> Conf ctx a
unCtx = Conf . unConf

-- インデントを1段深くする
indented :: Conf ctx a -> Conf ctx a
indented conf = Conf $ unConf conf . succ

-- httpブロックはglobalコンテキストにのみ配置
http :: Conf HTTPCtx a -> Conf GlobalCtx a
http block = putStrLnWithIndent "http {" *>
        unCtx (indented block) <*
        putStrLnWithIndented "}"

-- serverブロックはhttpコンテキストにのみ配置
server :: Conf ServerCtx a -> Conf HTTPCtx a
server block = putStrLnWithIndent "server {" *>
        unCtx (indented block) <*
        putStrLnWithIndent "}"


--locationブロックはlocationコンテキストかserverコンテキストにのみ配置
class LocationCtxBlockCtxs ctx
instance LocationCtxBlockCtxs ServerCtx
instance LocationCtxBlockCtxs LocationCtx
location :: LocationCtxBlockCtxs ctx => String -> Conf LocationCtx a -> Conf ctx a
location pattern block = putStrLnWithIndent("location " ++ pattern ++ "{") *>
                            unCtx (indented block) <*
                            putStrLnWithIndent "}"

-- indexディレクティブはhttp, server, locationコンテキストに配置
class IndexDirectiveCtxs cts
instance IndexDirectiveCtxs HTTPCtx
instance IndexDirectiveCtxs ServerCtx
instance IndexDirectiveCtxs LocationCtx
-- 複数取れるが簡単のため1つに
index ::  IndexDirectiveCtxs ctx => String -> Conf ctx ()
index file = putStrLnWithIndent $ "index " ++ file ++ ";"

-- listenディレクティブはserverコンテキスト内にのみ配置
listen :: String -> Conf ServerCtx ()
listen addrport = putStrLnWithIndent $ "listen " ++ addrport ++ ";"

