decompose:: Int -> [Int]
decompose x
    | x < 10 = [x]
    | otherwise = decompose (x `div` 10) ++ [x `mod` 10]

