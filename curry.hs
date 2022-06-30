--uncurry (*) . (\x -> (2,x)) == (2*)

-- uncurry (*) . (\x -> (2,x)) j
-- uncurry (*) ((\x -> (2,x)) j)
-- uncurry (*) (2,j)
-- (*) 2 j
-- 2*j
-- (2*) j

-------------------------------------------------------------------------------------

-- uncurry (+) . (\x -> (x,1)) == (+1)

-- uncurry (+) . (\x -> (x,1)) j
-- uncurry (+) ((\x -> (x,1)) j)
-- uncurry (+) (j,1)
-- (+) j 1
-- j+1
-- (+1) j


-- f1 :: (Eq a, Num b) => a -> (b -> a) -> (a,a)

--f1 :: (Eq a, Num b) => a -> (b -> a) -> (a, a)
--f1 x f | f 1 == x = (x,x)

--f2 :: (Ord a, Num b) => a -> (b -> a) -> (a, a)
--f2 :: (Ord a, Num b) => a -> (b -> a) -> (a, a)
--f2 x f | f 1 > x = (x,x)

--123 == 123
--True == True
--"abc" == "abc"

-- f1 x f = (f 1 == x,f 1 == x)

--f1 :: (Eq a, Num b) => a -> (b -> a) -> (Bool, a)
--f1 x f = (f 1 == x, x)

--                    f      g        x
-- f1 :: Num a => (a -> b, a -> c) -> a -> (c,b)
--                    b       c

--f1 (f,g) x = (g (x+1),f x)

-- repetir :: Char -> Int -> String
-- repetir c 0 = ""                     S2
-- repetir c x = c : repetir c (x-1)    S1

-- length :: [a] -> Int
-- length [] = 0                    L1
-- length (_:xs) = 1 + length xs    L2

-- P(n) : length (repetir 'a' n) == n (HI)

-- Caso base
-- P(0) : length (repetir 'a' 0) == 0
-- S2) length "" == L1) length "" == 0

-- PI P(n) -> P(n+1)
-- P(n+1) : length (repetir 'a' n+1) == n+1
-- S1) length ('a' : repetir a ((n-1)+1))
-- length ('a' : repetir 'a' n)
-- L2) 1 + length (repetir 'a' n)
-- HI) 1+n


--repetir :: (Int, Int) -> [Int]
--repetir (0,_) = []
--repetir (n,m) = m : repetir (n-1, m)

-- f [1, f[3] ,4 ,2]
-- div 1 (f [4,2])
-- div 1 (div 4 (f[]))
-- div 1 (div 4 1)
-- div 1 4
-- 0

-- f [f [1], 3, 4, 2]
-- max (f [4,2]) 3
-- max (max (f []) 2) 3
-- max (max 0 2) 3
-- max 2 3
-- 3


-- (\f -> (*2) . f) (*2) == (*4)
-- (\f -> (*2) . f) (*2)

--repetir :: Int -> [Int]
--repetir 0 = []
--repetir n = replicate (n * 2) n

repetir' ::  Int -> [Int]
repetir' 0 = []
repetir' n = repetir' ((2*n)-1) ++ [n]

repetir :: Int -> [Int]
repetir 0 = []
repetir n = take(2*n) (n: repetir n)