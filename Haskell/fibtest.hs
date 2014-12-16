module Main where

fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)
main = putStrLn (show (fibs !! 10))