--Definitely looks a lot cleaner but the "group" function feels like cheating, same with span
import Data.List

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) (group xs)

main = print (encode "aaaabccaadeeee")
