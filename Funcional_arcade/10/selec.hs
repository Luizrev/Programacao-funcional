getElem y xs = xs !! y

selec ys xs = map (\x -> getElem x ys) xs