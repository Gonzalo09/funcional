-- Ejercicio

-- Definir la función
-- enCeroValenCero :: [Int->Int] -> [Int -> Int] de forma
-- recursiva y usando esqFilter.
-- Ej: enCeroValenCero [\x -> 2*x, \x -> x-2, \x -> x*x] ~>
-- [\x -> 2*x, \x -> x*x].

esqFIlter :: (a -> Bool) -> [a] -> [a]
esqFIlter f = g
    where g [] = []
          g (x:xs)  | f x = x : g xs
                    | otherwise = g xs

enCeroValenCero :: [Int -> Int] -> [Int -> Int]
enCeroValenCero [] = []
enCeroValenCero (f:fs)  | f 0 == 0 = f : enCeroValenCero fs
                        | otherwise = enCeroValenCero fs

enCeroValenCero' :: [Int -> Int] -> [Int -> Int]
enCeroValenCero' = esqFIlter (\f -> f 0 == 0)
