pertence i x 
        |x == [] = False
        |(head x) == i = True
        |otherwise = pertence i (tail x)

        