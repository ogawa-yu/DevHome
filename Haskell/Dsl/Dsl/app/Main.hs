module Main where

import Lib
import Nginx

-- ディレクティブやブロックが
-- 正しいコンテキストに配置されれば
-- 何も言われない

main :: IO ()
main = runConf $ do
    http $ do
        server $ do
            listen "*:80"
            location "/" $ do
                index "index.html"

