filtt func [] = []
filtt func (x:xs)
            | func x == True = x : filtt func xs
            | otherwise = filtt func xs