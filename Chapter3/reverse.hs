module Reverse where

rvrs :: String -> String
rvrs [] = []
rvrs s = irvrs (s, [])
  where
    irvrs :: (String, String) -> String
    irvrs (x : xs, acc) = irvrs (xs, x : acc )
    irvrs ([], acc) = acc

main :: String -> IO ()
main = print . rvrs
