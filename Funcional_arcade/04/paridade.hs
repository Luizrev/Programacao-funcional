qtdTrue x
    |x == [] = 0
    |(head x == False) = 0 + qtdTrue (tail x)
    |(head x == True) = 1 + qtdTrue (tail x)

paridade x = if (qtdTrue x) `mod` 2 /= 0 then True else False