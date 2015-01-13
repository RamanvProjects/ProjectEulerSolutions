module Main where

xs = [(a,b,c) | a <- [300..1000], b <- [300..1000], c <- [300..1000], a <= b, a*a + b*b == c*c]

--xs is all pythagorean trips (can go 4eva)

thousands = [(a,b,c) | (a,b,c) <- xs, a + b + c == 1000]
main = putStrLn (show (thousands))