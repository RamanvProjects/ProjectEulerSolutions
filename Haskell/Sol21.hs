import           Data.List

d :: Integer -> Integer
d n = sum $ init $ foldl (\acc xs -> [a * b | a <- acc, b <- xs]) [1] powers
        where
            primes = 2:filter (null . tail . primeFactors) [3, 5..]
            primeFactors = pf primes
                where
                    pf ps@(phead:ptail) a
                        | phead*phead >  a  = [a]
                        | r == 0            = phead:pf ps q
                        | otherwise         = pf ptail a
                        where (q, r) = a `divMod` phead

            powers = map (scanl (*) 1) (group (primeFactors n))



main :: IO ()
main = print $ sum [a | a <- [2..10000], let b = d a, a == d b, a /= b] -- 1 * 2 * 5 * 10
