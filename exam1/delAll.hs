delAll :: Eq a => a -> [a] -> [a]
delAll n [] = []
delAll n (x:xs)
    | x == n = delAll  n xs
    | otherwise = x : delAll n xs
-- main = print (delAll 2 [1,2,3,2,1])