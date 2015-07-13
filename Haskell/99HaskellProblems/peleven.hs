import Data.List

data ListItem a = Single a | Multiple Int a
    deriving (Show)

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = combine (map (\x -> (1, x)) xs)
            where
                combine [] = []
                combine [(a,b)] = [(a,b)]
                combine (y:ys) = if snd y == (snd . head) ys
                    then (addTuple y (head ys)):(combine (tail ys))
                    else y:(combine ys)
                    where addTuple (a, b) (c, d) = if b == d then (a + c, b)                    else error "not equal"

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map encodeHelper . encode
    where
      encodeHelper (1,x) = Single x
      encodeHelper (n,x) = Multiple n x

main = print (encodeModified "abadfahlashdflalaaaaalskdfjhasldfh")
