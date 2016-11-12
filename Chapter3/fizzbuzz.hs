module FizzBuzz where

main :: Int -> IO ()
main x = mapM_ putStrLn (take x  fizzbuzzers)
  where
    toFizzBuzz :: Integer -> String
    toFizzBuzz p | mod p 5 == 0 && mod p 3 == 0 = "fizzbuzz"
                 | mod p 3 == 0                 = "fizz"
                 | mod p 5 == 0                 = "buzz"
                 | otherwise                    = show p

    fizzbuzzers :: [String]
    fizzbuzzers = map toFizzBuzz nats

    nats :: [Integer]
    nats = [1 ..]
