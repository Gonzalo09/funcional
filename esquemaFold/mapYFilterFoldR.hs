-- Ejercicio
-- Definir los esquemas de map y filter a partir del esquema de foldr.

esqFoldr :: ( a -> b -> b ) -> b -> [a] -> b
esqFoldr r z = g
    where   g [] = z
            g ( x : xs ) = r x ( g xs )

map' :: (a -> b) -> [a] -> [b]
map' f = esqFoldr ((:) . f) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' f = esqFoldr (\x xs -> if f x then x:xs else xs) []