--Auxiliar da função errada
somel x y
    |y == [] = []
    |otherwise = [(head y) + x] ++ somel x (tail y)
--Função errada
listacc x
    |x == [] = []
    |(length x) == 1 = x
    |otherwise = somel (head x) (tail x)

listaCerta x
    |(length x) <= 1 = x
    |otherwise = listaCerta (init x) ++ [sum x]