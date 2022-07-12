compac x
    |x == [] = []
    |length repet > 1 = [[head x,(length repet)]] ++ (compac resto)
    |otherwise = [[head x]] ++ compac resto
    where
        repet = takeWhile (==(head x)) x
        resto = dropWhile (==(head x)) x