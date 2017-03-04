
digits :: Int -> Int
digits = length . show

square :: Num a => a -> a
square = (^2)

square' :: Num a => a -> a
square' x = x ^ 2

ultimate :: Int -> String
ultimate 42 = "人生、宇宙、すべての答え"
ultimate n = show n

maybeToList :: Maybe a -> [a]
maybeToList Nothing = []
maybeToList (Just a) = [a]

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (a:as) = Just a

deeping :: String -> String
deeping []             = []
--deeping ('\t':xs)      = "    " ++ deeping s
--deeping (s:xs)         = [s] ++ deeping xs
-- asパターン
deeping s@(' ':' ':_) = " " ++ s
deeping s@(' ':_)     = " " ++ s
deeping s              = s

-- よくないパターンマッチの例
-- 網羅的に定義できていない。
-- 0, 1, 2以外の整数を関数の引数に渡すと
-- 実行時エラーになる
-- こうした定義不足は、 ghci起動時に "-W"オプションをつけると
-- コンパイラが検出してくれる
--nonExhaustive :: Int -> Int
--nonExhaustive 0 = 0
--nonExhaustive 1 = 1
--nonExhaustive 2 = 2
