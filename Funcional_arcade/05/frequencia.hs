freq y [] = 0
freq y x
    |y == (head x) = 1 + freq y (tail x)
    |otherwise = 0 + freq y (tail x)


freqFilter x (y:ys) = length $ (filter (==x) (y:ys))

aux y x
    |x == [] = 0
    |y == (head x) = 1:aux y (tail x)
    |otherwise = 0:(aux y (tail x))

--freqMap x (y:ys) = fold (+) $ map (==x) (y:ys)