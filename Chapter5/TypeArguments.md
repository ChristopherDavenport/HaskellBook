# Type Arguments

1.

```
f :: a -> a -> a -> a
x :: Char

g :: Char -> Char -> Char -> Char
g = f x
```

2.

```
g :: a -> b -> c -> b

f :: Char
f = g 0 'c' "woot"
```

3.

```
h :: (Num a, Num b) => a -> b -> b

f :: Num b => b
f = h 1.0 2
```

4.

```
h :: (Num a, Num b) => a -> b -> b

f :: Double
f = h 1 (5.5 :: Double)
```

5.

```
jackal :: (Ord a, Eq b) => a -> b -> a

a :: [Char]
a = jackal "keyboard" "has the world jackal in it"
```

6.

```
a :: Eq b => b -> [Char]
a = jackal "keyboard"
```

7.

```
(Ord a, Num b) => a -> b -> a
kessel 1 2
e = (Ord a, Num a) => a
or as applied is a Integer
```

8.
Same as above

9.
As the type of the return argument has been applied it will be an Integer.
