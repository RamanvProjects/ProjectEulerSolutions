fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)
main = print (take 10 fibs)
