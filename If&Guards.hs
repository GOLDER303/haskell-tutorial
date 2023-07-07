inRange min max x =
  if in_lower_bound then in_upper_bound else False
  where
    in_lower_bound = min <= x
    in_upper_bound = max >= x

fac n
  | n <= 1 = 1
  | otherwise = n * fac (n - 1)
