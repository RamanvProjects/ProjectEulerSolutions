elementAt :: (Integral a) => [b] -> a -> b

elementAt (a:_) 1 = a
elementAt [] _ = error "out of bounds"
elementAt (_:xs) n = elementAt xs (n - 1)

main = print (elementAt [1..] 4)
