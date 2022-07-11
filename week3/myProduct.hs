myProduct :: [Integer] -> Integer

myProduct [] = 1
myProduct (x:xs) = x * (myProduct xs)


main :: IO ()
main =  do
    putStr "Multiply the list "
    print(myProduct [5,5,1])


-- [5,5,1] = [5,1]
-- [5,1] = [1]
-- [5] = []