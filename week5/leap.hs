leap :: Int -> Bool
leap a
    | (rem a 400) == 0 || (rem a 4) == 0 && (rem a 100 /= 0) = True
    | otherwise = False


-- main :: IO()
-- main = do
--     print (leap 2000)
--     print (leap 1900)
--     print (leap 2010)
--     print (leap 2012)
--     print (leap 1800)
