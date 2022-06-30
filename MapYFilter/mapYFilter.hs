--Ejercicios extra

-- Definir sin usar recursión la función
-- cabezasDeNoVacias :: [[a]] -> [a] que, dada una lista de
-- listas, devuelve las cabezas de las listas no vacías.
-- Ej: cabezasDeNoVacias [[1,2], [], [3]] ~> [1,3].

cabezasDeNoVacias :: [[a]] -> [a]
cabezasDeNoVacias = map head . filter (\xs -> length xs > 0)

-- Definir sin usar recursión la función
-- paresCuadrados :: [Int] -> [Int] que, dada una lista de
-- enteros, devuelve una lista con los cuadrados de los números
-- pares.
-- Ej: paresCuadrados [2,3,4] ~> [4,16].

paresCuadrados :: [Int] -> [Int]
paresCuadrados = map (^ 2) . filter even