class BoolLike a where
    fromBoolLike :: a -> Bool -- 真偽値のようなものから実際の真偽値への変換

instance BoolLike Int where
    fromBoolLike = (0 /=)

instance BoolLike (Maybe a) where
    fromBoolLike Nothing = False
    fromBoolLike (Just _) = True

instance BoolLike Bool where
    fromBoolLike x = x

data A = A
data B = B

class ToInt a where
    toInt :: a -> Int

instance ToInt A where
    toInt _ = 1

instance ToInt B where
    toInt _ = 2

add :: ToInt x => x -> x -> Int
add x y = toInt x + toInt y

add' :: (ToInt x, ToInt y) => x -> y -> Int
add' x y = toInt x + toInt y

square :: Integer -> Maybe Integer
square n
    | 0 <= n    = Just (n * n)
    | otherwise = Nothing

squareRoot :: Integer -> Maybe Integer
squareRoot n 
    | 0 <= n    = squareRoot' 1
    | otherwise = Nothing
    where 
        squareRoot' x
            | n > x * x = squareRoot' (x + 1)
            | n < x * x = Nothing
            | otherwise = Just x

squareAndSquareRoot1 :: Integer -> Maybe Integer
squareAndSquareRoot1 n = case square n of
                Nothing -> Nothing
                Just nn -> squareRoot nn

squareAndSquareRoot2 :: Integer -> Integer -> Maybe Integer
squareAndSquareRoot2 m n = case square m of
                Nothing -> Nothing
                Just mm -> case square n of
                    Nothing -> Nothing
                    Just nn -> squareRoot (mm * nn)
