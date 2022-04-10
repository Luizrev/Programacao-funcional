min3 a b c 
        |a < b && a < c = a
        |b < a && b < c = b
        |c < a && c < b = c
-- caso usar um numero negativo tem que colocar entre ()