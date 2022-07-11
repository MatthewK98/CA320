nubSorted :: Eq a => [a] -> [a]
nubSorted [] = []
nubSorted (x:xs) = x : dedup x xs
  where
  dedup num (x:xs) | num == x = dedup num xs
  dedup _ (x:xs) = x : dedup x xs
  dedup _ [] = []