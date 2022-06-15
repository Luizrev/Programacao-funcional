somaMaybe (Just x) (Just y) = Just(x+y)
somaMaybe (Just x) Nothing = Just(x)
somaMaybe Nothing (Just y) = Just(y)
somaMaybe Nothing Nothing = Nothing