filterMaybe xs = [x | (Just x) <- xs]

countNothing xs = length [0 | (Nothing) <- xs]