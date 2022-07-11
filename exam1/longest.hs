longest :: [[Int]] -> [Int]
longest []=[]
longest [y] = y
longest (x:y:list)
 |length x < length y = longest (y:list)            
 |otherwise = longest (x:list)

-- main = print (longest [[1,2,3],[1,2], [1,2,3,5,7],[1,2,3]])