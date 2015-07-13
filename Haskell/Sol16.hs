sums :: String -> Integer
sums = foldl (\acc x -> (read [x] :: Integer) + acc) 0

digsum :: Integer -> Integer
digsum x = sums (show x)


main :: IO ()
main = print (digsum $ 2^1000)
