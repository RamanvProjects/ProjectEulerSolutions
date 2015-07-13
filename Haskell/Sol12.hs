import Data.List
--not needed
-- lcms :: Integral a => [a] -> a
-- lcms = foldl1 lcm
--
-- factors :: Integral a => a -> [a]
-- factors x = filter (\a -> 0 == rem x a) [1..x]

-- first triangular number with more than 500 factors
-- 1, 2, 4, 7, 14, 28

triangles :: [Int]
triangles = scanl1 (+) [1..]

primeFactors :: Int -> Int -> [Int] -> [Int]
primeFactors x n q
    | n >= x            = n:q
    | x `mod` n == 0    = primeFactors (x `div` n) n (n:q)
    | otherwise         = primeFactors x (n + 1) q

numFactors :: Int -> Int
numFactors x = product (map ((+1) . length) (group (primeFactors x 2 [])))

--Can be made faster, maybe infinite list of primes
main :: IO()
main = print (head (dropWhile ((<=5) . numFactors) triangles))
