num :: Eq a => a -> [a] -> Int
num n [] = 0 --Base Case

num n (x:xs) -- n is element and (x:xs) is list
   | x == n =  num n xs + 1
   | otherwise = num n xs


-- Testing
-- main :: IO ()
-- main =  do
--     putStr "print Solutions "
--     print ( num 2 [1,2,3,2,1,1,2] )
--     print ( num "dog" ["cat","dog","rabbit","dog"])