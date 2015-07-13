module Main where

sieve :: Integer -> [Integer] -> [Integer]
sieve _ [] = []
sieve max (x:xs) = if x < max
					then x:(sieve max (filter (\q -> q `mod` x /= 0) xs))
					else x:(filter (\q -> q `mod` x /= 0) xs)

intSquareRoot :: Integer -> Integer
intSquareRoot n = aux n
				where aux x | x*x > n = aux (x - 1) | otherwise = x

primes :: Integer -> [Integer]
primes x = sieve (intSquareRoot x) [2..x]

divides :: Integer -> Integer -> Bool
divides _ 0 = False
divides 0 _ = True
divides n m = m `mod` n == 0

primeFactors :: Integer -> [Integer]
primeFactors 0 = []
primeFactors 1 = []
primeFactors x = filtrate [2..x]
				where
					filtrate [] = []
					filtrate [2] = [2]
					filtrate (y:ys) = if y `divides` x
						then y:filtrate ((filter (\q -> not (y `divides` q)) ys))
						else filtrate (filter (\q -> q `divides` x) ys)

main = print (primeFactors 600851475143)
