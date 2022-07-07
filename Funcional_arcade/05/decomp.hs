decomp x
    |x<10 = [x]
    |otherwise = decomp (x `div` 10) ++ [x `mod` 10]