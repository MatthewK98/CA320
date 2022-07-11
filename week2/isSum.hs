isSum :: (Integral a) => a -> a -> a -> Bool
isSum a b c 
      | a == b + c = True 
      | b == a + c = True 
      | c == a + b = True 
      | otherwise = False



 -- isSum :: (Integral a) => a -> a -> a -> Bool
 --  isSum num1 num2 num3 = (num1 + num2 == num3)  (num1 + num3 == num2)  (num2 + num3 == num1) 
 --  if isSum then
 --      True
 --  else
 --      FalseAAAAAA	
 