isTriangle :: Float -> Float -> Float -> Bool
isTriangle x y z 
      | x + y <= z = False
      | x + z <= y = False
      | z + y <= x = False
      | otherwise  = True


triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z 
  | isTriangle x y z= sqrt(s *(s - x) * (s - y) * (s - z)) 
  | otherwise = error "Not a triangle!"
  where
      s = (x + y + z) / 2