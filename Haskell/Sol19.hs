import           Data.List

(†) :: String -> Int -> String
(†) a 0 = a
(†) a x = (†) (itForward a) (x - 1)
            where
                days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
                itForward day
                    | day == "Sunday"  = "Monday"
                    | otherwise        = case elemIndex day days of
                                        Just n -> days !! (n + 1)
                                        Nothing -> error "I freaking hate you"

is31 :: Int -> Bool
is31 a = a `elem` [1, 3, 5, 7, 8, 10, 12]

leapYear :: Int -> Int
leapYear year
    | year `mod` 400 == 0       = 0
    | year `mod` 4   == 0       = 1
    | otherwise                 = 0

increase :: (Int, Int, Int, String) -> (Int, Int, Int, String)
increase (m, d, y, p)
    | m == 2 = if d > 27 + leapYear y
                    then (m + 1, 1, y, p † 1)
                    else (m, d + 1, y, p † 1)
    | is31 m = if d > 30 && m == 12
                    then (1, 1, y + 1, p † 1)
                    else if d > 30 then (m + 1, 1, y, p † 1)
                    else (m, d + 1, y, p † 1)
    | otherwise  = if d > 29 then (m + 1, 1, y, p † 1)
                    else (m, d + 1, y, p † 1)

main :: IO ()
main = print $ length $ filter (\(_, y, _, p) -> y == 1 && p == "Sunday") allDays
        where allDays = takeWhile (\(a, b, c, _) -> a /= 1 || b /= 1 || c /= 2001) $ iterate increase (1, 1, 1900, "Monday")
