rote x = (last x) ++ init x

-- rotEsq x y
--     |x == 0 = y
--     |x == 1 = rote y
--     |otherwise = rotEsq (x-1) (rote y)