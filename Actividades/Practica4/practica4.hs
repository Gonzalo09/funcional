--1--

suma x y = x + y
producto x y = x * y
inverso x | x /= 0 = 1/x
indefinido = indefinido
const5 x = 5

-- suma (sqrt 2) (producto 5 3) -> sqrt 2 + producto 5 3
-- sqrt 2 -> 1.4142135623730951
-- producto 5 3 -> 5 * 3

-- snd (3, inverso 0) -> inverso 0
-- inverso 0 -> 0 /= 0 = 1/0

-- 1:[2] ++ reverse [3,4]
-- 1:[2] -> [1,2]
-- reverse [3,4] -> [4,3]

-- 1 == 2 || 3 > 0
-- 1 == 2 -> False
-- 3 > 0 -> True

-- indefinido -> indefinido

-- const5 indefinido -> 5

--2--
-- suma (sqrt 2) (producto 5 3) -> (sqrt 2) + (producto 5 3) ->
-- 1.4142135623730951 + (5*3) -> 1.4142135623730951 + 15 ->
-- 16.414213562373096
-- Forma normal

-- snd (3, inverso 0) -> inverso 0 -> Exception
-- Indefinida

-- 1:[2] ++ reverse [3,4] -> [1,2] ++ reverse [3,4] ->
-- [1,2] ++ [4,3] -> [1,2,4,3]
-- Forma normal

-- 1 == 2 || 3 > 0 -> False || 3 > 0 ->
-- False || True -> True
-- Forma normal

-- indefinido -> indefinido -> indefinido -> ..
-- Indefinida

-- const5 indefinido -> 5
-- Forma normal

--3--
divide :: Int -> Int -> Bool
divide x y = mod x y == 0
-- Parcial
-- Si y = 0 se indefine

divide' :: Int -> Int -> Bool
divide' x y | x == 0    = False
            | otherwise = mod x y == 0
-- sigue siendo lo mismo que arriba(?
-- cambia la "x" no la "y"

f :: Int -> Bool
f x = divide 2 (x^2+1)
-- Total(?

listaAPar :: [a] -> (a,a)
listaAPar [x,y] = (x,y)
-- Parcial
-- Si recibe una lista que no sea de 2 elemetos se indefine

head' :: a -> [a] -> a
head' x xs = head (xs ++ [x])
-- Total

--4--
