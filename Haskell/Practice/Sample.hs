
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
deeping ('\t':'\t':xs) = "  " ++ deeping xs
deeping ('\t':xs)      = " " ++ deeping xs
deeping (s:xs)         = [s] ++ deeping xs
