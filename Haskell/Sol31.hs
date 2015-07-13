-- currency :: [Int]
-- currency = [1, 2, 5, 10, 20, 50, 100, 200]
--
-- -- brute force
--
-- numWays :: Int -> [[Int]]
-- numWays x = [xs | a <- [0..200],
--                     b <- [0..100],
--                     c <- [0..40],
--                     d <- [0..20],
--                     e <- [0..10],
--                     f <- [0..4],
--                     g <- [0..2],
--                     h <- [0..1],
--                     let xs = [a, b, c, d, e, f, g, h],
--                     (sum $ zipWith (*) xs currency) == x]
--
-- main :: IO ()
-- main = print $ length $ numWays 200

coins = [1,2,5,10,20,50,100,200]

combinations = foldl (\without p ->
                          let (poor,rich) = splitAt p without
                              with = poor ++ zipWith (++) (map (map (p:)) with)
                                                          rich
                          in with
                     ) ([[]] : repeat [])

problem_31 = combinations coins !! 200
main = print problem_31
