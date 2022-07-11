triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z = sqrt(s * (s - x) * (s - y) * (s - z))
    where
      s = (x + y + z) / 2

-- main = do 
--    putStrLn "The area of the triangle is:"  
--    print(triangleArea 3 4 5) --6.0
--    print(triangleArea 1 2 2.5) --0.94991773
--    print(triangleArea 1 1 (sqrt 2)) --0.5000001