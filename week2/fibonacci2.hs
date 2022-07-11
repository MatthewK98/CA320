fibonacci :: Integer -> Integer

fibonacci nth
       | nth == 0 = 0  --Base Case
       | nth == 1 = 0  --Base Case
       | nth == 2 = 1  --Base Case
       | otherwise = fibonacci (nth-1) + fibonacci (nth-2)