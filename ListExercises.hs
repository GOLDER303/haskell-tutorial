myElem :: (Eq a) => a -> [a] -> Bool
myElem _ [] = False
myElem e (x : xs) = (e == x) || myElem e xs

myNub :: (Eq a) => [a] -> [a]
myNub [] = []
myNub (x : xs)
  | x `myElem` xs = myNub xs
  | otherwise = x : myNub xs

myIsAsc :: [Int] -> Bool
myIsAsc [] = True -- No elements in the list
myIsAsc [x] = True -- One element in the list
myIsAsc (x : y : xs) = (x <= y) && myIsAsc (y : xs)

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
  | x == y = True
  | otherwise =
      let xs' = [(n, m) | (n, m) <- xs, n /= x] -- /= -> not equal
       in or [hasPath xs' m y | (n, m) <- xs, n == x] -- we do "or" on the whole list, so if any element return True this statement is True