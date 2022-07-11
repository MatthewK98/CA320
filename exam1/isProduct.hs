isProduct :: Float -> Float -> Float -> Bool
isProduct x y z 
      | x * y == z = True
      | x * z == y = True
      | z * y == x = True
      | otherwise  = False
    

-- main :: IO ()
-- main =  do
--     putStr "Solutions  "
--     print(isProduct 5 5 1)
--     print(isProduct 3 4 12)
--     print(isProduct 3 7.5 2.5)
--     print(isProduct 10 10 10)