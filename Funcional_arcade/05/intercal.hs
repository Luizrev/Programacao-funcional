intercall [] x = x
intercall x [] = x
intercall (x:xs) (y:ys) = x:y:intercall xs ys