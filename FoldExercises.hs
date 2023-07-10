rev :: [a] -> [a]
-- rev xs = foldl (\acc x -> x : acc) [] xs -- first version (a bit longer)

-- rev = foldl (\acc x -> x : acc) []
-- in this example we could use partial function application if the arguments were in reversed order: rev = foldl (:) []
-- to do this we can use flip function. This function apply function that we provide to if on arguments with reversed order. so instead of acc : x we get x : acc
rev = foldl (flip (:)) []

prefixes :: [a] -> [[a]]
prefixes = foldr (\x acc -> [x] : map (x :) acc) []


data Tire a = Leaf a | Node a [Tire a]

foldTire :: (b -> a -> b) -> b -> Tire a -> b
foldTire f acc (Leaf x) = f acc x
foldTire f acc (Node x xs) = foldl f' (f acc x) xs
  where
    f' = foldTire f -- f' acc t = foldTire f acc t