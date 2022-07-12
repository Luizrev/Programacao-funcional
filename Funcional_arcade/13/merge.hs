merge xs [] = xs
merge [] ys = ys
merge xs ys = if (head xs)<(head ys) then (head xs): merge (tail xs) ys else (head ys): merge xs (tail ys)