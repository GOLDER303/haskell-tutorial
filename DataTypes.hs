data Color
  = Red
  | Green
  | Blue

data Calculation
  = Add Int Int
  | Sub Int Int
  | Mul Int Int
  | Div Int Int

-- We can use it in pattern matching:
calc :: Calculation -> Int
calc (Add x y) = x + y
calc (Sub x y) = x - y
calc (Mul x y) = x * y
calc (Div x y) = div x y

-- Also they can be recursive:
data Tree a = Leaf | Node (Tree a) a (Tree a)

tree :: Tree Int
tree = Node (Node Leaf 1 Leaf) 2 (Node (Node Leaf 3 Leaf) 4 Leaf)