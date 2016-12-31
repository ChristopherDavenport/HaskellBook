# Chapter Exercises

### Multiple Choice

1. c
2. a
3. b
4. c

### Determine the type

1.  

```
oneA :: Num a => a
oneB :: Num t => (t, [Char])
oneC :: (Integer, [Char])
oneD :: Bool
oneE :: Int
oneF :: Bool
```

2.  

```
two :: Num a => a
```

3.  

```
three :: Num a => a -> a
```

4.

```
four :: Fractional a => a
```

5.

```
five :: [Char]
```

### Does it compile?

1.
Constrained Polymorphic([0])
Fully Polymorphic [1]
Concrete ([2], [3])

2.
Fully Polymorphic ([0])
Concrete ([1], [2])

3.
Fully Polymorphic([0])
Constrained Polymorphic ([1])
Concrete ([2])

4.
Fully Polymorphic([0], [1])
Concrete ([2])


### Write a type Signature

1.  

```Haskell
functionH :: [a] -> a
functionH (x:_) = x
```

2.

```Haskell
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False
```

3.  

```Haskell
functionS :: (a, b) -> b
functionS (x, y) = y
```

### Given a type, write the function

1.  

```Haskell
i :: a -> a
i a = a
```

2.  

```Haskell
c :: a -> b -> a
c a b = a
```

3. Yes

4.

```Haskell
c' :: a -> b -> b
c' a b = b
```

5.  Cheating ish

```Haskell
r :: [a] -> [a]
r array = tail array
```

6. Compose

```
co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC (aToB a)
```

7. Ignore

```
a :: (a -> c) -> a -> a
a aToC avar = avar
```

8. Apply

```
a' :: (a -> b) -> a -> b
a' aToB a = aToB a
```

### Fix it

### Type-Kwon-Do
