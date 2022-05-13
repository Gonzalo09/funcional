--1--
sumaA :: Num a => a -> a -> a
sumaA x y = x + y

divisionB :: Fractional a => a -> a -> a
divisionB x y = x / y

divC :: Integral a => a -> a -> a
divC = div

modD :: Integral a => a -> a -> a -> Bool
modD x y z = mod x y == z

verdadE :: Integral a => a -> Bool -> (a, Bool)
verdadE x y = (x, y)

--2--
sucesor :: Num a => a -> a
sucesor x = x + 1

segundo :: a -> b -> b
segundo _ y = y

suma' :: Num a => (a, a) -> a
suma' x = fst x + snd x

repetido :: a -> (a, a)
repetido x = (x, x)

--3--
suma :: Float -> Float -> Float
suma x y = x + y

-- Si
-- Si
-- No
-- No

--4--
f1 :: Int -> Int -> Int -> Int 
f1 x y z = x + y + z

f2 :: Bool -> a -> a -> a
f2 x y z    | x = y
            | otherwise = z

f3 :: (a,b) -> c -> (c,b,a)
f3 (x,y) z = (z,y,x)