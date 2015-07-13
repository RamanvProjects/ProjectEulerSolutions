-- yay lazy fibs

fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

main :: IO ()
main = print $ ((+1) . length) (takeWhile (\x -> length (show x) < 1000) fibs)
