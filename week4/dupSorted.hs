nubSorted :: Eq a => [a] -> Bool
nubSorted [] = True
nubSorted (x:xs)
    |dedup num (x:xs) | num == x = True
    |dedup _ (x:xs) = True
    |dedup _ [] = True