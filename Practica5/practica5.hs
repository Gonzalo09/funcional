suma = \x y -> x + y

snd' = \(x,y) -> y

head' = \(x:xs) -> x

twice f = \x -> f (f x)

apply :: (a -> b) -> a -> b
apply f = g
    where g x = f x

--flip :: (a -> b -> c) -> b -> a -> c
flip :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
flip f = g
    where g x y = f y x

--appDup :: (a -> b) -> (a -> b) -> a -> (b,b)
appDup :: ((b, b) -> t) -> b -> t
appDup f = g
    where g x = f (x,x)

--appFork :: (a -> b, a -> b) -> a -> b -> (a,a)
appFork :: (t -> a, t -> b) -> t -> (a, b)
appFork (f , g) = h
    where h x = (f x , g x)

--apply fst
apply' = \f -> \(x,y) -> x
