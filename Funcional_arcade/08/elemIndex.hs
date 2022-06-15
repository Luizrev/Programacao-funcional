import Data.List
import Data.Maybe

myIndex y xs = isJust $ elemIndex y xs

myelemIndex y xs
    |(myIndex y xs) = Just $ fromJust $ elemIndex y xs
    |otherwise = Nothing