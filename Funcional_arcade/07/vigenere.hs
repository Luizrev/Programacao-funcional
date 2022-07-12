import Data.Maybe
import Data.List
import Data.Char

intPletra x = fromJust $ lookup x $ zip [0..] ['A'..'Z']
letraPint x = fromMaybe (-1) $ elemIndex (toLower x) ['a'..'z']
somaCifr oper x y = intPletra $ oper (letraPint x) (letraPint y) `mod` 26
cifr texto chav oper = zipWith (somaCifr oper) (map toLower texto) $ cycle (map toLower chav)

vigenere inp chave = cifr inp chave (+)
desvigenere inp chave = cifr inp chave (-)
