mLengths :: Int -> [Int]

mLengths a
    | (rem a 400) == 0 || (rem a 4) == 0 && (rem a 100 /= 0) = [31,29,31,30,31,30,31,31,30,31,30,31]
    | otherwise = [31,28,31,30,31,30,31,31,30,31,30,31]

-- main :: IO()
-- main = do
--     print (mLengths 2015)
--     print (mLengths 2016)
    -- print (mLengths 2010)
    -- print (mLengths 2012)
    -- print (mLengths 1800)
