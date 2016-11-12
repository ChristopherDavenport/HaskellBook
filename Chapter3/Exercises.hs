module Exercises where

-- Building Functions
drop :: Int -> [a] -> [a]
drop _ [] = []
drop 0 y = y
drop x y = Exercises.drop (x-1) (tail y)

init :: [a] -> [a]
init [] = []
init a = Prelude.init a

-- 1.a 2.a Add exclamation mark
addExclamationMark :: String -> String
addExclamationMark x = x ++ "!"

-- 1.b 2.b Last Char First Word
lastCharFirstWord :: String -> Maybe (Maybe Char)
lastCharFirstWord x =  fmap lastOption (headOption (seperateOnWhiteSpace x))

-- 1.c 2.c Last Word
lastWord :: String -> Maybe String
lastWord x = lastOption $ seperateOnWhiteSpace x

-- 3 Third Letter
thirdLetter :: String -> Maybe Char
thirdLetter x = headOption (Exercises.drop 2 x)

-- 4 Letter At Index
letterIndex :: Int -> String -> Maybe Char
letterIndex x s = headOption (Exercises.drop x s)

-- Helpers

seperateOnWhiteSpace :: String -> [String]
seperateOnWhiteSpace = seperateOn ' '

headOption :: [a] -> Maybe a
headOption [] = Nothing
headOption (x:_) = Just x

lastOption :: [a] -> Maybe a
lastOption [] = Nothing
lastOption [x] = Just x
lastOption x = headOption (reverse x)

seperateOn :: Char -> String -> [String]
seperateOn _ [] = []
seperateOn del s = iSeperateOn (s, [], [], del)
  where
      iSeperateOn :: (String, String, [String], Char) -> [String]
      iSeperateOn ([], acc, accList, _) = accList ++ [acc]
      iSeperateOn ( x : xs , acc, accList, delim) | x == delim  = iSeperateOn (xs, [], accList ++ [acc], delim)
                                                  | otherwise = iSeperateOn (xs, acc ++ [x], accList, delim)
