-- import Data.Foldable
-- import Data.Function

-- shortest :: [[Int]] -> [Int]
-- shortest [] = []
-- shortest xs = minimumBy (compare `on` length) xs
-- main = print (shortest [[1,2,3],[1,2],[1,2,3,4,5],[4,3,2,1]])



shortest :: [[Int]] -> [Int]
shortest []=[]
shortest [y] = y
shortest (x:y:list)
 |length x < length y = shortest (y:list)            
 |otherwise = shortest (x:list)

main = print (shortest [[1,2,3],[1,2], [1,2,3,5,7],[1,2,3]])