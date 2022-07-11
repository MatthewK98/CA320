import Data.Char(chr,ord)
f :: (Int,Int) -> Int
f x y
    | x > 10     = max x y
    | otherwise  = x - a
  where a        = square (y+1)
        square x = x * x



next :: Char -> Char
next c
     = chr (ord c)+1


increment :: Int -> Int
increment x = x
              where  x = x+1

-- Obviously this definition doesn't make sense!
-- How can x possibly equal x+1?  That would mean 0==1 ...
-- Try increment 3 to see what happens.