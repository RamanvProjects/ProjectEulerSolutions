pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = if elem x extens
                then (x:extens):(tail (pack xs))
                else [x]:(pack xs)
                where
                    extens = (head (pack xs))

main = print (pack [1, 1, 1, 2, 3, 3, 3, 4])
