numX :: Integral a => a -> String
numX x
    | x < 10    = numbers !! (fromIntegral x - 1)
    | x < 100   = (numX (x `div` 10)) ++ (degrees !! 0) ++ (numX (x - (div x 10) * 10))
    | x < 1000  = (numX (x `div` 100)) ++ (degrees !! 1) ++ (numX (x - (div x 10) * 10))
    | otherwise = error "too large"
    where
        ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        tens = ["ten", "twenty", ]
        degrees = ["ty", " hundred", " thousand"]

main = print (numX 25)
