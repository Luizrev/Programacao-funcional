import Data.List
import Data.Maybe

set xs index valor = take index xs ++ [valor] ++ drop (index + 1) xs

neib xs index lim = drop baixo . take cima $ xs
    where baixo = max 0 (index - lim)
          cima = min (length xs) (index + lim + 1)

exists y xs = isJust $ elemIndex y xs

dig2char dig = fromJust $ lookup dig $ zip [0..] "0123456789"

getHoles xs = [buraco | (i, buraco) <- zip xs [0..], i == '.']

fit (xs, lim) index valor = not . exists (dig2char valor) $ neib xs index lim

fitValues xs lim index = [valor | valor <- [0..lim], fit (xs, lim) index valor]

solve (xs, lim) holes hindex
    |null (fitValues xs lim (holes !! hindex)) = Nothing
    |hindex == (length holes) = Just xs

mainSolver xs lim = fromJust (solve (xs, lim) (getHoles xs) 0)
