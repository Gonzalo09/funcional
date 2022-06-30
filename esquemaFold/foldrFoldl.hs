-- Ejercicios extras

-- Definir a partir de los esquemas de foldr y foldl la función
-- pertenece :: Eq a => a -> [a] -> Bool que, dado un elemento
-- x y una lista xs, devuelve True sii x pertenece a xs.

pertenece :: Eq a => a -> [a] -> Bool
pertenece z = foldr (\x xs -> (x == z) || xs) False

pertenece' :: Eq a => a -> [a] -> Bool
pertenece' z = foldl (\xs x -> (x == z) || xs) False

-- Definir a partir de los esquemas de foldr y foldl la función
-- cantidad :: [[a]] -> Int que, dada una lista de listas de
-- elementos de tipo a, devuelve la cantidad de elementos de tipo
-- a entre todas las listas.
-- Ej: cantidad [[2,3],[1,2,6],[],[3]] ~> 6.

--cantidad :: [[a]] -> Int
--cantidad = foldr (\x xs -> length x + xs) 0

--cantidad' :: [[a]] -> Int
--cantidad' = foldl (\xs x -> ) 0

-- Definir, usando el esquema de fold adecuado, la función
-- potenciaEnOrden :: [Integer] -> Integer que, dada una lista
-- de enteros xs, devuelve el resultado de ir aplicando las
-- potencias en ese orden.
-- Ej: potenciaEnOrden [2,3,4] ~> (2^3)^4.

--potenciaEnOrden :: [Integer] -> Integer
--potenciaEnOrden = foldr (\x xs -> x^(head xs)) 0