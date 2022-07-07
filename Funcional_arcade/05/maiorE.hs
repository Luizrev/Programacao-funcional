removeMaior xs
    |(head xs) == (maximum xs) = (tail xs)
    |otherwise = [head xs] ++ removeMaior (tail xs)