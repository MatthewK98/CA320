num :: Eq a => a -> [a] -> Int
num n [] = 0 --Base Case

num n (x:xs) -- n is element and (x:xs) is list
   | x == n =  num n xs + 1
   | otherwise = num n xs