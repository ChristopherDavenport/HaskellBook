# Apply Yourself

1.   

```
(++) :: [a] -> [a] -> [a]
myConcat x = x ++ " yo"
```

As the value " yo" is an array of chars this should now be
limited to accepting similar array of chars such that
myConcat :: [Char] -> [Char]

2.

```
(*) :: Num a => a -> a -> a
myMult x = (x / 3) * 5
```

As we are dividing x Num is further specified to to Fractional so the resulting
myMult should require a Fractional.

```
myMult :: Fractional a => a -> a
```

3.

```
take :: Int => [a] -> [a]
myTake x = take x "hey you"
```

As we are referencing a Array of Char again this should specify the types
of the second value.

```
myTake :: Int -> [Char]
```

4.

```
(>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
```

As the comparsion operator needs an ordering for A and we know it is now an
Int.

```
myCom x :: Int -> Bool
```

5.

```
(<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
```
Same as the argument above as we are applying directly to a type the type
becomes fully specified.

```
myAlph :: Char -> Bool
```
