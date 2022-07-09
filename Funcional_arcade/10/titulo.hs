import Data.Char

altera xs
    |tail xs == [] = []
    |head xs == ' ' = toUpper(head (tail xs)) : altera (tail xs)
    |otherwise = toLower (head (tail xs)) : altera (tail xs)

titulo xs = altera (' ':xs)