module Main where
--First attempt, strange behavior (makes a fibonacci sequence but in a strange way)
--fibs list h = if h == 0 || h == 1 then 1:list else fibs list (h-1) ++ fibs list (h-2)

fib x = if x == 0 || x == 1 then 1 else fib (x-1) + fib (x-2)
listofFibs :: [Int] -> [Int]
listofFibs xs = [fib x | x <- xs]
evens xs = [x | x <- xs, x `mod` 2 == 1]

maxs = 4000000
main = putStrLn (show (sum (evens (listofFibs [1..maxs]))))