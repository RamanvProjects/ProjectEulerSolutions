--list of all pythagorean triples

pythags :: (Integral a) => [(a, a, a)]
pythags = [(x,y,z) | z<-[1..], x<-[1..z], y<-[1..z], x^2+y^2==z^2, x<y ]

-- More efficient infinite list
-- nvm
-- getting the proper element (can be done because of laziness)
main = print (head (filter (\(a, b, c) -> a + b + c == 1000) pythags))
