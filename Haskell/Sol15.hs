factorial :: Integral a => a -> a
factorial 0 = 1
factorial 1 = 1
factorial x = x * factorial (x - 1)

main :: IO ()
main = print (div (factorial 40) (factorial 20 * factorial 20))
