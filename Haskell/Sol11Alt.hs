import           Data.Array

parse :: String -> Array (Int,Int) Int
parse = listArray ((1,1), (20,20)) . map read . words

directions :: [(Int, Int) -> (Int, Int)]
directions = [
    \(a, b) -> (a + 1, b),
    \(a, b) -> (a, b + 1),
    \(a, b) -> (a + 1, b + 1),
    \(a, b) -> (a - 1, b + 1)]

isInBounds :: Ix i => Array i e -> i -> Bool
isInBounds arr = inRange (bounds arr)

products :: Array (Int, Int) Int -> [Int]
products arr = [product q | dir <- directions,
                    i <- indices arr,
                    let path = take 4 $ iterate dir i,
                    all (isInBounds arr) path,
                    let q = map (arr!) path]

main :: IO ()
main = print . maximum . products . parse =<< getContents
