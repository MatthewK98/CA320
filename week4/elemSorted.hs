elemSorted :: Ord a => a -> [a] -> Bool

elemSorted val [] = False

elemSorted val (x:xs)
	| val < x = False
    | val == x = True
    | otherwise = elemSorted val xs

-- main = print (elemSorted 1 [1,2])