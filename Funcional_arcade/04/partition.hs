separar [] = ([],[])
separar (x:xs) = ([x | odd x] ++ impares,[x | even x] ++ pares)
    where
        (impares,pares) = separar xs