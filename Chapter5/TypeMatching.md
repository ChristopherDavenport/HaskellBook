# Exercise: Type Matching

Type Signatures

```
head :: [a] -> a
```

Although one might consider head a bit of a problem since it throws an error
on an empty array.

```
concat :: [[a]] -> [a]
```

An array of arrays concatenated into a singular array.

```
not :: Bool -> Bool
```

Returns the opposite bool of the one it is given.

```
length :: [a] -> Int
```

Takes an array and returns to number of elements in it.

```
(<) :: Ord a => a -> a -> Bool
```

Given an ordering system for a, indicates whether the first value application is less than the second value application in the form of a Bool.
