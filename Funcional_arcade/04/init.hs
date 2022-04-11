primeiros x
    |(length x) == 1 = []
    |otherwise = reverse $ tail $ (reverse x)