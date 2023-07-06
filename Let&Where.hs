inRange :: Float -> Float -> Float -> Bool
inRangeLet :: Float -> Float -> Float -> Bool
inRangeWhere :: Float -> Float -> Float -> Bool


inRange min max x = x >= min && x <= max

inRangeLet min max x =
  let in_lower_bound = min <= x
      in_upper_bound = max >= x
   in in_lower_bound && in_upper_bound

inRangeWhere min max x = in_lower_bound && in_upper_bound
  where
    in_lower_bound = min <= x
    in_upper_bound = max >= x
