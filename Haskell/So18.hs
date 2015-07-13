import           Data.List.Split

parse :: String -> [[Integer]]
parse x = map (map read . words) $ splitOn "\n" x

maxTransit :: [[Integer]] -> Integer
maxTransit tri = head $ foldr1 maximize tri
                where
                  decidePath x y z = x + max y z
                  maximize xs ys = zipWith3 decidePath xs ys $ tail ys

main :: IO ()
main = do
        a <- getContents
        print (maxTransit . parse $ a)
