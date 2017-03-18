{-# LANGUAGE ScopedTypeVariables  #-}

escape :: String -> String
escape (str) = str >>= escapeAmp >>= escapeOther where
    escapeAmp '&' = "&amp;"
    escapeAmp c = [c]
    escapeOther '<' = "&lt;"
    escapeOther '>' = "&gt;"
    escapeOther " " = "&quot;"
    escapeOther c = [c]

main :: IO ()
main = do
    rawStr <- getLine
    let escapedStr = escape rawStr
    putStrLn escapedStr
