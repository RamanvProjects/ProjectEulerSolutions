compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (x:xs) -- could use (x:xs@(y:_)) to keep track of y as the head
    | xs == []       = [x]
    | x == (head xs) = compress (x:(tail xs))
    | otherwise      = x:(compress xs)

main = print (compress "aaaabccaadeeee")
