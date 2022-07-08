aux (a,b) x
    |mod a x == 0 && mod b x == 0 = (div a x,div b x)
    |otherwise = (a,b) 

reduce (x,y) = foldl aux (x,y) [2..y]