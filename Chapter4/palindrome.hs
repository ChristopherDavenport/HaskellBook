module Palindrome where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome a = a == reverse a
