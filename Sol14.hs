collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n
    | even n        = n:collatz (n `div` 2)
    | otherwise     = n:collatz (3*n + 1)

len :: [a] -> Integer
len = sum . map (const 1)

main :: IO ()
main = print (maximum chains)
            where
                chains  = map (\x -> ((len . collatz) x, x)) [1..1000000]
