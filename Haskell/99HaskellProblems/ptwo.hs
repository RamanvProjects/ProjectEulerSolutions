myButLast :: [a] -> a

myButLast [] = error "empty"
myButLast [a] = error "too small"
myButLast [a, b] = a
myButLast (_:xs) = myButLast xs

main = print (myButLast ['a' .. 'z'])
