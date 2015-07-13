module Main where

listMultiples :: (Integral a) => a -> [a]
listMultiples hi = filter (\x -> ((x `mod` 3) == 0) || ((x `mod` 5) == 0)) [1.. (hi - 1)]

hi = 1000 --change this number for different 3 and 5 multiple sums

main = print (sum (listMultiples hi))
