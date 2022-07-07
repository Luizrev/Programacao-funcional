del x ys
    |ys == [] = []
    |x == (head ys) = (tail ys)
    |otherwise = [head ys] ++ del x (tail ys)