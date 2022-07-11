data Tree a = Null | Node a (Tree a) (Tree a)  deriving(Show,Read)


addNode :: Ord a => a -> Tree a -> Tree a


addNode a Null = (Node a Null Null)

addNode a (Node left value right)
   | left > a = Node left (addNode a value) right
   | otherwise = Node left value (addNode a right)


-- main :: IO()
-- main = do
--     print (addNode 3 Null )
-- 3 Null -> Node 3 Null Null
-- 3 "Node 5 Null Null" -> Node 5 (Node 3 Null Null) Null
-- 1 "Node 5 (Node 4 (Node 3 (Node 2 Null Null) Null) Null) Null" -> Node 5 (Node 4 (Node 3 (Node 2 (Node 1 Null Null) Null) Null) Null) Null
-- 4 "Node 5 (Node 1 Null (Node 3 Null Null)) (Node 7 Null Null)" -> Node 5 (Node 1 Null (Node 3 Null (Node 4 Null Null))) (Node 7 Null Null)