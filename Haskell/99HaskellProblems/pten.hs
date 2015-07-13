-- re list for thing, grouping, try to remember folds

--I prefer this solution, makes less assumptions about known functions (like "group" or "span")

addTuple :: (Eq a) => (Int, a) -> (Int, a) -> (Int, a)
addTuple (a, b) (c, d) = if b == d then (a + c, b) else error "not equal"

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = combine (map (\x -> (1, x)) xs)
            where
                combine [] = []
                combine [(a,b)] = [(a,b)]
                combine (y:ys) = if snd y == (snd . head) ys
                    then (addTuple y (head ys)):(combine (tail ys))
                    else y:(combine ys)

-- encode :: Eq a => [a] -> [(Int, a)]
-- encode = map (\x -> (length x, head x)) . group
main = print (encode "haskell")
