numSorted :: Ord a => a -> [a] -> Int
numSorted n [] = 0 --Base Case
-- numSorted n [a] = 1
numSorted n (x:xs) -- n is element and (x:xs) is list
   | n < x = 0
   | x == n =  numSorted n xs + 1
   | otherwise = numSorted n xs


-- Testing
-- main :: IO ()
-- main =  do
--     putStr "print Solutions "
--     print ( numSorted 2 [1,2,3,2,1,1,2] )
--     print (numSorted 2 [1,2,3,2,1])
--     print ( numSorted "dog" ["cat","dog","rabbit","dog"])