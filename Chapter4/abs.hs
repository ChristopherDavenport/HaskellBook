module Abs where

abs :: Integer -> Integer
abs x =
  if greaterThanZero x
    then x
    else -x
    where greaterThanZero y = y >= 0 
