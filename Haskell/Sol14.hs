collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n
    | even n        = n:collatz (n `div` 2)
    | otherwise     = n:collatz (3*n + 1)

main :: IO ()
main = print (maximum chains)
            where chains  = map (\x -> ((length . collatz) x, x)) [1..1000000]

-- Slow solution, try using array next. This is unfortunately brute force
