-- L9 follow along
-- understanding map by writing functions as if map did not exist
-- myProduct: reduces a list into the product of its terms
myProduct n = foldl (*) 1 n