module Main where

list3multiples highest = [n | n <- [3..highest-1], n `mod` 3 == 0, not (n `mod` 5 == 0)]
list5multiples highest = [n | n <- [5..highest-1], n `mod` 5 == 0]

hi = 1000 --change this number for different 3 and 5 multiple sums (this program isn't very expandable)

main = putStrLn (show (sum ((list3multiples hi) ++ (list5multiples hi))))