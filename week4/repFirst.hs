repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst num num2 [] = []
repFirst num num2 (x:xs)
  | num == x = num2: xs
  | otherwise = x : repFirst num num2 xs

-- main = print (repFirst 2 4 [1,2,3,2,1])