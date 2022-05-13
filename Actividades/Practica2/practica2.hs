--1

--f(n) = 2n
doble :: Int -> Int
doble 0 = 0 -- Caso base
doble n = 2 + doble (n-1) -- Recursividad

--f(n) = 3n
potencia3 :: Int -> Int
potencia3 0 = 1 -- Caso base
potencia3 n = 3 * potencia3 (n-1) -- Recursividad

-- Sumatoria n-1 + n
sumatoria :: Int -> Int
sumatoria 0 = 0 -- Caso base
sumatoria n = n + sumatoria (n-1) -- Recursividad

-- Sumatoria n2
sumatoria2 :: Int -> Int
sumatoria2 0 = 0 -- Caso base
sumatoria2 n = n^2 + sumatoria (n-1) -- Recursividad

--2

--doble :: Int -> Int
--doble 0 = 0 -- Caso base (S1)
--doble n = 2 + doble (n-1) -- Recursividad (S2)

-- P(n) -> doble n == 2 * n
-- Caso base P(0) -> doble 0 == 2 * 0
-- doble 0 == (S1) 0

-- Recursividad P(n) -> doble n == 2 * n (HI)
--              P(n+1) -> doble (n+1) == 2 * (n+1)
-- doble (n+1) == (S2)  2 + doble ((n+1)-1) == 2 + doble n
-- == (HI) 2 + 2 * n == 2 * (1+n) == 2 * (n+1)

---------------------------------------------------------------------------------

--potencia3 :: Int -> Int
--potencia3 0 = 1 -- Caso base (S1)
--potencia3 n = 3 * potencia3 (n-1) -- Recursividad (S2)

-- P(n) -> potencia3 n == 3^n
-- Caso base P(0) -> potencia3 0 == 3^0
-- potencia3 0 == (S1) 1

-- Recursividad P(n) -> potencia3 n == 3^n (HI)
--              P(n+1) -> potencia3 (n+1) == 3^(n+1)
-- potencia3 (n+1) == (S2) 3 * potencia3 ((n+1)-1) == 3 * potencia3 n
-- == (HI) 3 * 3^n == 3^(n+1)

-----------------------------------------------------------------------------

--sumatoria :: Int -> Int
--sumatoria 0 = 0 -- Caso base (S1)
--sumatoria n = n + sumatoria (n-1) -- Recursividad (S2)

-- P(n) -> sumatoria n == "Suma de los primeros n numeros"
-- Caso base P(0) -> sumatoria 0 == "Suma de los primeros 0 numeros"
-- sumatoria 0 == (S1) 0

-- Recursividad P(n) -> sumatoria n == "Suma de los primeros n numeros" (HI)
--              P(n+1) -> sumatoria (n+1) == "Suma de los primeros n+1 numeros"
-- sumatoria (n+1) == 
-- (S2) n+1 + sumatoria ((n+1)-1) 
-- == n+1 + sumatoria n
-- == (HI) n+1 + "Suma de los primeros n numeros" == "Suma de los primeros n+1 numeros"

-------------------------------------------------------------------------------------

--sumatoria2 :: Int -> Int
--sumatoria2 0 = 0 -- Caso base (S1)
--sumatoria2 n = n^2 + sumatoria (n-1) -- Recursividad (S2)

-- P(n) -> sumatoria2 n == "Suma de los primeros n^2 numeros"
-- Caso base P(0) -> sumatoria2 0 == "Suma de los primeros 0^2 numeros"
-- sumatoria2 0 == (S1) 0

-- Recursividad P(n) -> sumatoria2 n == "Suma de los primeros n^2 numeros" (HI)
--              P(n+1) -> sumatoria2 (n+1) == "Suma de los primeros (n+1)^2 numeros"
-- sumatoria2 (n+1) == (S2) (n+1)^2 + sumatoria ((n+1)-1) == (n+1)^2 + sumatoria n
-- == (HI) (n+1)^2 + "Suma de los primeros n^2 numeros" == "Suma de los primeros (n+1)^2 numeros"

--3

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- P(n) -> factorial n == 


--4
mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a b = mcd b (mod a b)