import           Data.Array
import           Data.Char
import           Data.List
-- First let's test out factorials and speed

-- regular form
fact1 :: Integer -> Integer
fact1 n = product [1..n]

-- infinite list form, there's a better way to do this lazily
factorials :: [Integer]
factorials = scanl (*) 1 [1..]

-- Better normal form, way faster, forces evaluation over recursion
fact2 :: Integer -> Integer
fact2 n = foldl' (*) 1 [1..n]

-- Tree form, surprisingly fast despite not reducing computations, in general reduces the time when folding over a list
bp :: [Integer] -> Integer
bp [] = 1
bp [a] = a
bp xs = bp (reduce xs)
        where
            reduce (xfirst:xsecond:rest) = xfirst * xsecond:reduce rest
            reduce as = as

fact3 :: Integer -> Integer
fact3 n = bp [1..n]

result :: [Integer]
result =
    let
        digits = listArray (0,9) $ map fact3 [0..9] -- For the purposes of caching
        curious n = sum (map (\x -> digits ! digitToInt x) (show n)) == n
    in filter curious [3..2540161] -- Pretty easy to find the upper bound. It is 7 * 9! + 1

main :: IO ()
main = print $ sum result
