
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
listToMaybe (a:_) = Just a

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

safeSqrt :: (Ord a, Floating a) => a -> Maybe a
safeSqrt x
    | x < 0 = Nothing
    | otherwise = Just (sqrt x)

caseOfFirstLetter :: String -> String
--caseOfFirstLetter "" = "empty" -- 空文字列にパターンマッチ
--caseOfFirstLetter (x:_)
--    | 'a' <= x && x <= 'z' = "lower"
--    | 'A' <= x && x <= 'Z' = "upper"
--    | otherwise            = "other"
caseOfFirstLetter str = 
    case str of
    ""    -> ""
    (x:_) -> if 'a' <= x && x <= 'z'
             then "lower"
             else if 'A' <= x && x <= 'Z'
                  then "upper"
                  else "other"

fib :: Int -> Int
fib n
    | n < 0 = 0
    | n < 2 = 1
    | otherwise = fib (n - 1) + fib (n - 2)

ins :: Ord a => a -> [a] -> [a]
ins e [] = [e] -- 空リストへの挿入は無条件
ins e (x:xs)
    | e < x     = e : x : xs   -- 先頭の値より小さければ先頭へ
    | otherwise = x : ins e xs -- 先頭より大きければ残りの部分で挿入

insSort :: Ord a => [a] -> [a]
insSort [] = []
insSort (x:xs) = ins x (insSort xs)

popMaybe :: Num a =>  Maybe a -> a
popMaybe Nothing  = 0
popMaybe (Just a) = a

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _          = []
zipWith' _ _ []          = []
zipWith' f (a:as) (b:bs) = f a b : zipWith' f as bs

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ e []     = e
foldr' f e (x:xs) = f x (foldr' f e xs)

map' :: (a -> b) -> [a] -> [b]
map' f = foldr' ((:).f) []
mean :: [Double] -> Double
-- mean xs = sum xs / fromIntegral (length xs)
mean xs = let (res, len) = foldl (\(m, n) x -> 
                           (m + x / len, n + 1)) (0,0) xs in res

isJust :: Maybe a -> Bool
isJust Nothing  = False
isJust (Just _) = True

total :: Num a => [a] -> a
total xs = total' 0 xs where
    total' acc [] = acc
    total' acc (x:xs) = total' (acc + x) xs

