import Data.List

--not needed
euclid :: Integral a => a -> a -> a
euclid a 0 = a
euclid 0 a = a
euclid a b = euclid b (a `mod` b)

--not needed
gcds :: Integral a => [a] -> a
gcds = foldl1 gcd

lcms :: Integral a => [a] -> a
lcms = foldl1 lcm

main = print (lcms [1..20])
