menorS xs = foldl (\a y -> if y<a then y else a) (head xs) xs

elemen  y xs = foldl achei False xs
    where achei res x = res || x==y

impares xs = foldl pega [] xs
    where pega a y = if odd y then a++[y] else a

achei (acc,y) x = if x == y then (acc + 1,y) else (acc,y)
--contar xs y = foldl achei (0,y) xs

encontrar_repetido (acc, x) y = if x == y then (acc + 1,y) else (acc,y)
contar_iguais (x:xs) = fst $ foldl encontrar_repetido (0,x) xs

