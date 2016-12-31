{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1

oneA = (* 9) 6
oneB = head [(0, "doge"), (1,"kitteh")]
oneC = head [(0 :: Integer , "doge") , (1, "kitteh")]
oneD = if False then True else False
oneE = length [1, 2, 3, 4, 5]
oneF = (length [1, 2, 3, 4]) > (length  "TACOCAT")

two = w
  where
    x = 5
    y = x + 5
    w = y * 10

three = z
  where
    x = 5
    y = x + 5
    z y = y * 10

four = f
  where
    x = 5
    y = x + 5
    f = 4 / y

five = f
  where
    x = "Chris"
    y = " <3 "
    z = "Haskell"
    f = x ++ y ++ z
