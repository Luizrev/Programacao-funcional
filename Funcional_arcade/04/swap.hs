swap' xs i j = (take i xs) ++ [xs !! j] ++ (take (j - i - 1) (drop (i + 1) xs)) ++ [xs !! i] ++ (drop (j + 1) xs)

swap xs i j = if (i <= (length xs)) && (j <= (length xs)) then swap' xs i j else xs