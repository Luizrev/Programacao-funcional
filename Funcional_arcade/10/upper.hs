uppa dig = head [snd y | y <- zip ['a'..'z'] ['A'..'Z'] ++ [(dig, dig)], (fst y) == dig] 

    
upper xs = map uppa xs