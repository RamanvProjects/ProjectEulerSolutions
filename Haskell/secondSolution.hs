fib :: [Integer]
fib = 1:1:zipWith (+) fib (tail fib) --Infinite sequence, takes advantage of laziness
evens xs = filter (even) xs

maxs = 4000000
main = print (sum (evens (takeWhile (<=maxs) fib)))
