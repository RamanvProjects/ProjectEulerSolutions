myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myReverse' :: [a] -> [a]
myReverse' = foldl (flip (:)) []

-- moves reversed into empty list, keeps adding to head
reverses :: [a] -> [a]
reverses list = reverse' list []
  where
    reverse' [] reversed     = reversed
    reverse' (x:xs) reversed = reverse' xs (x:reversed)

--similar to
myLength :: [a] -> Int
myLength [] = 0
myLength xs = accum xs 0
    where
        accum [] n = n
        accum (_:ys) n = accum ys (n + 1)

main = print ((myLength . reverses) "Haskell")
