myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [b] = b
myLast (_:xs) = myLast xs

myLast' = head . reverse
main = print (myLast' ['a', 'c', 'q'])
