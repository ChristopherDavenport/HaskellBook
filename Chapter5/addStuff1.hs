module AddStuff1 where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen :: Integer -> Integer
addTen a = addStuff 5 a
