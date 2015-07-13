mylength :: [a] -> Int
mylength [] = 0
mylength (_:xs) = 1 + myLength xs

myLength :: [a] -> Int
myLength xs = sum [1 | a <- xs]

myLength' :: [a] -> Int
myLength' = sum . map (\_ -> 1)

main = print (mylength "haskell")
