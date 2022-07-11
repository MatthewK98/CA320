-- import Data.Char(toUpper)
-- stringToUpper :: String -> String

import Data.Char(toUpper)
stringToUpper :: String -> String
stringToUpper "" = ""
stringToUpper (x:xs) = toUpper x : stringToUpper xs

main :: IO()
main = do
    putStr "Print Strings => "
    print(stringToUpper "convert this !")


-- the general idea of recursion is that you have 1 or more base cases, and then 1 or more cases which eventually end up at the base cases

-- init [] = error "init of empty list" -- pretty bad practice in real haskell code, but for demonstration it is fine
-- init [x] = []
-- init (x:xs) = x:init xs
-- init [1,2,3] == [1,2]



-- recurseMe :: Int -> Int
-- recurseMe x = recurseMe x-1
-- recurseMe 0 = 0