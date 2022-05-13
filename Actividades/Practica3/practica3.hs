--1

-- [] -> Si -> [a]
-- [3, 1.0, 2] -> Si -> Fractional a => [a]
-- [2 :: Int, 1.0, 2] -> No
-- [True, [False]] -> No

--2

sumaLista :: [Int] -> Int
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

prodLista :: [Int] -> Int
prodLista [] = 1
prodLista (x:xs) = x * prodLista xs

todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (x:xs) = even x && todosPares xs

todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x:xs) = x == head xs && todosIguales xs

pertenece :: Eq a => a -> [a] -> Bool
pertenece x [] = False
pertenece x (y:xs) = x == y || pertenece x xs

--3

--sumaLista [] = 0 (S1)
--sumaLista (x:xs) = x + sumaLista xs (S2)

-- Caso base -> P(n) == sumaLista n == "Suma de los elementos de la lista n"
-- P([]) sumaLista [] == "Suma de los elementos de la lista []"" == 0 S1

-- Recursividad P(xs) == sumaLista (xs) = "Suma de los elementos de la lista xs"
-- P((x:xs)) sumaLista (x:xs) == x + "Suma de los elementos de la lista xs"
-- "Suma de los elementos de la lista (x:xs)" == "Suma de los elementos de la lista xs"