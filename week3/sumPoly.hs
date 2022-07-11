sumPoly :: [Int] -> [Int] -> [Int]
sumPoly [] [] = []
sumPoly [x] [] = [x]
sumPoly [] [y] = [y]
sumPoly (x:xs) (y:ys) = add x y : sumPoly xs ys

-- main = print (sumPoly [1,2,3] [1,2,3])

add :: Int -> Int -> Int
add x y = x + y