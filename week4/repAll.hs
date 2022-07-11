repAll :: Eq a => a -> a -> [a] -> [a]
repAll num num2 [] = []
repAll num num2 (x:xs)
  | num == x = num2 : repAll num num2 xs --Make this recursive for every occurence 
  | otherwise = x : repAll num num2 xs

-- main = print (repFirst 2 4 [1,2,3,2,1])