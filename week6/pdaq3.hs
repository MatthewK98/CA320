

-- Create abc variable 
--abc variable for:
-- ""
-- "cabc"
-- "cacbca"
-- "aabbcccc"
-- "acbcbcac"

-- reject
-- "a"
-- "abc"
-- "cacbcac"

abc = (1, [4], [((1, "", ""), (2, "#")),
               ((2, "c", ""), (2, "c")),((2, "", ""), (3, "")),
               ((3, "a", "c"),(3, "")),((3, "b", "c"), (3, "")),((3, "c", "a"), (3, "")),((3, "c", "b"), (3, "")),
               ((3, "a", ""), (3, "a")),
               ((3, "b", ""), (3, "b")),
               ((3, "c", ""), (3, "c")),
               ((3, "", "#"), (4, "")) 
               ])


