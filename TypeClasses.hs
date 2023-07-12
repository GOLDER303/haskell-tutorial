data Temperature = C Float | F Float

-- If we want our class to have Eq functionality we need to do this in the following way:
instance Eq Temperature where
  (==) (C n) (C m) = n == m
  (==) (F n) (F m) = n == m
  (==) (C c) (F f) = (1.8 * c + 32) == f
  (==) (F f) (C c) = (1.8 * c + 32) == f
