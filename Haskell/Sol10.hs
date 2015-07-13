sieve :: Integral a => a -> [a] -> [a]
sieve _ [] = []
sieve hi (x:xs) = if x < hi
                then x:sieve hi (filter (\q -> q `mod` x /= 0) xs)
                else x:filter (\q -> q `mod` x /= 0) xs

sqirty :: (Integral b, Integral a) => a -> b
sqirty x = floor (sqrt (fromIntegral x))

primes :: Integer -> [Integer]
primes x
            | x < 2  = [] 
            | otherwise = sieve (sqirty x) [2..x]

main = print (sum (primes 2000000))
