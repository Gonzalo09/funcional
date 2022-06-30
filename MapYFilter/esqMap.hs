-- Ejercicio

-- Definir la función negarTodos :: [Bool] -> [Bool] de forma
-- recursiva y usando esqMap.
-- Ej: negarTodos [True,False,True] ~> [False,True,False].

esqMap :: (a -> b) -> [a] -> [b]
esqMap f =  g
    where   g [] = []
            g (x:xs) = f x : g xs

negarTodos :: [Bool] -> [Bool]
negarTodos [] = []
negarTodos (x:xs)   | x = False : negarTodos xs
                    | otherwise = True : negarTodos xs

negarTodos' :: [Bool] -> [Bool]
negarTodos' = esqMap (== False)

-- Definir la función porTresMasUno :: [Int] -> [Int] de forma
-- recursiva y usando esqMap.
-- Ej: porTresMasUno [1,2,3] ~> [4,7,10].

porTresMasUno :: [Int] -> [Int]
porTresMasUno [] = []
porTresMasUno (x:xs) = (x*3+1) : porTresMasUno xs

porTresMasUno' :: [Int] -> [Int]
porTresMasUno' = esqMap (\x -> x*3+1)