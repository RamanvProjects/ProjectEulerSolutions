import Data.List.Split

parseList :: String -> [Integer]
parseList b = let xs = splitOn "\n" b
                in [read a :: Integer | a <- xs]

--Learn =<<
main :: IO ()
main = do
            x <- getContents
            print (take 10 $ show $ sum . parseList $ x)
