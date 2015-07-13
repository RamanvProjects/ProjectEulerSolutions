sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (x:xs) = x:(sieve $ filter (\q -> q `mod` x /= 0) xs)

intSquareRoot :: Integer -> Integer
intSquareRoot n = aux n
				where aux x | x*x > n = aux (x - 1) | otherwise = x

primes :: [Integer]
primes = sieve [2..]

main = print (primes !! 10000)
