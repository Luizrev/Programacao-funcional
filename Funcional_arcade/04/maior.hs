maior x
    |(length x) == 1 = head x
    |(head x) > maior (tail x) = head x
    |otherwise = maior (tail x)