import Control.Monad (replicateM)

pontuacao :: (Int, Int) -> Int
pontuacao (a, b) = abs (a - b)

escolheV :: ((Int, Int), Int) -> ((Int, Int), Int) -> ((Int, Int), Int)--esclhe entre 2 qual foi melhor
escolheV (ab, i) (ab', i') = if pontuacao ab < pontuacao ab' then (ab,i) else (ab',i')

procuraMelhor :: [[Char]] -> Int--usa o de cima para varrer e achar o melhor
procuraMelhor xs
    | null passed = -1
    | otherwise = snd $ foldl1 escolheV passed
        where
            vetInt = map decompose xs     
            glued = zip vetInt [0..]      
            passed = filter (\((a,b), i) -> a >= 10 && b >= 10) glued

decompose :: [Char] -> (Int, Int)
decompose line = (head tokens, tokens !! 1)
    where
        tokens = map (read :: String -> Int) . words $ line

processa vet
    | (procuraMelhor vet) == -1 = "sem ganhador"
    | otherwise = show (procuraMelhor vet) 