tails xs
    |xs == [] = [[]]
    |otherwise = [xs] ++ tails (tail xs)