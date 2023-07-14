import Data.Maybe

-- data Maybe a = Just a | Nothing

safeDiv :: Integral a => a -> a -> Maybe a
safeDiv a b = if b == 0 then Nothing else Just $ div a b

isSafeDivSuccess = isJust $ safeDiv 4 2

isSafeDivNotSuccess = isNothing $ safeDiv 4 2

safeDivValue = fromJust $ safeDiv 6 3

safeDivValueWithDefault = fromMaybe 0 $ safeDiv 6 3