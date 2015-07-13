import Data.List
--not needed but cool anyways
removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates xs = heads (group xs)
                        where
                            heads [] = []
                            heads (x:xs) = (head x):(heads xs)

isPalindrome :: Integer -> Bool
isPalindrome x = ((reverse . show) x) == (show x)

palindromeMults :: Integer -> [Integer]
palindromeMults n = [a * b | a <- [100..n], b <- [a..n], isPalindrome (a * b)]

maxes :: [Integer] -> Integer
maxes [] = 0
maxes [a] = a
maxes (x:xs) = max (x) (maxes xs)

main = print (maxes (palindromeMults 1000))
