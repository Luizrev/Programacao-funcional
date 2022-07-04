sublist begin end xs = drop comeco . take fim $ xs
    where 
        comeco = if begin < 0 then begin + (length xs) else begin
        fim = if end < 0 then end + (length xs) else end
