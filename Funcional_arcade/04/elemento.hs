elemento' y (x:xs) 
            |y == 0 = x
            |y > 0 = elemento' (y-1) xs

elemento y x
            |y < 0 = elemento' (length x + y)  x
            |y > (length x) = elemento (mod y $ length x) x
            |otherwise = elemento' y x 

