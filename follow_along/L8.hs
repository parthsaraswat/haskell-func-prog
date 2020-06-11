-- L8 follow along

-- recursion on lists
-- length fn
myLength [] = 0
myLength xs = 1 + myLength (tail xs)
-- take fn
myTake _ [] = []
myTake 0 xs = []
myTake n (x:xs) = x:rest
    where rest = myTake (n-1) xs