module Main where

let tests num = 
	where xs = [1..num]
	[x | x <- xs, num `mod` x == 0]

main = putStrLn (show (tests 190))