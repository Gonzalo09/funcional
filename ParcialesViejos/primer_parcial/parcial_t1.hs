-- Definir una función con el siguiente tipo
f1 :: Num a => (a -> b, a -> c) -> a -> (c,b)
f1 (f,g) = h
    where h x = (g x,f x)


-------------- Ejercicio 2 -----------------

-- a) Definir recursivamente una función "repetir" que dado un caracter c y un entero n
-- devuelve el string que tiene el caracter c repetido n veces.
-- Ej: repetir 'a' 3 == "aaa"

repetir :: Char -> Int -> String
repetir x 0 = "" --C1
repetir x y = x : repetir x (y-1) --C2

-- b) Probar por inducción la siguiente propiedad:
-- P(n): length (repetir 'a' n) == n

-- length :: [a] -> Int
-- length [] = 0                 (L1)
-- length (_:xs) = 1 + length xs (L2)

-- P(n): length (repetir 'a' n) == n
-- Caso base -> P(0): length (repetir 'a' 0) == 0 ==
-- C1 length [] == 0 ==
-- L1 0

-- HI -> P(n): length (repetir 'a' n) == n
-- P(n+1): length (repetir 'a' n+1) == n+1
-- C2 length (repetir 'a' n+1) == length ('a' : repetir 'a' ((n+1)-1)) == length ('a' : repetir 'a' n)
-- L2 1 + length (repetir 'a' n) == HI 1+n

-------------- Ejercicio 3 -----------------

--f :: [Int]  -> Int
--f []                    = 0
--f [_]                   = 0
--f (_:y:xs)              = max (f xs) y

-- reducir la expresión f [f [1],3,4,2] con orden normal.

-- f [f [1],3,4,2]
-- max (f [4,2] 3)
-- max (max (f []) 2) 3
-- max (max 0 2) 3
-- max 2 3
-- 3

-- orden aplicativo

-- f [f [1],3,4,2]
-- f [0,3,4,2]
-- max (f [4,2] 3)
-- max (max (f []) 2) 3
-- max (max 0 2) 3
-- max 2 3
-- 3

-------------- Ejercicio 3 -----------------

--f :: [Int] -> Int
--f []                    = 1
--f [_]                   = 1
--f (x:_:xs)              = div x (f xs)

-- reducir la expresión f [1,f [3],4,2] con orden normal.

-- f [1,f [3],4,2]
-- div 1 (f [4,2])
-- div 1 (div 4 (f []))
-- div 1 (div 4 1)
-- div 1 4
-- 0

-- Orden aplicativo

-- f [1,f [3],4,2]
-- f [1,1,4,2]
-- div 1 (f [4,2])
-- div 1 (div 4 (f []))
-- div 1 (div 4 1)
-- div 1 4
-- 0

f1' :: Num a => a -> b -> ((b,a) -> c) -> ((b,c) -> d) -> d
f1' x y f g = g (y,f (y,x))


f1'' x y f g = g (y,f (y,x))
-- a = x
-- y = b


