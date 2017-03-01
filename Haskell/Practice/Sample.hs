
digits :: Int -> Int
digits = length . show

square :: Num a => a -> a
square = (^2)

square' :: Num a => a -> a
square' x = x ^ 2

ultimate :: Int -> String
ultimate 42 = "人生、宇宙、すべての答え"
ultimate n = show n


