import Data.Char(toUpper)
-- import Data.Char(toLower)


-- stringToUpper :: String -> String

-- stringToUpper "" = ""

-- stringToUpper(x:xs) = toLower x : stringToUpper xs

-- main = print(stringToUpper "Hello world" == "hello world")

-- shortest :: [[a]] -> [a]

-- shortest [] = []
-- shortest (x:xs) = shortest x : 
-- main = print (shortest [[1,2,3],[1,2],[1,2,3,4,5],[4,3,2,1]])



isPalindrome :: [Int] -> Bool
isPalindrome [x] = if reverse [x] == [x]
					then True 
					else
						False