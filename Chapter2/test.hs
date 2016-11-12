sayHello :: String -> IO ()
sayHello x = putStrLn("Hello, " ++ x ++ "!")

triple :: Int -> Int
triple x = x * 3

echoTriple :: Int -> IO ()
echoTriple x = putStrLn( show x ++ " tripled is " ++  show (triple x) )

-- Comprehension Check 1
-- let half x = x/2
half :: Fractional a => a -> a
half x = x / 2

--  let square x = x * x
square :: Num a => a -> a
square x = x * x

-- Comprehension Check 2 
timesApproxPi :: Fractional a => a -> a
timesApproxPi x = 3.14 * x

-- Comprehension Check 3
timesPi :: Floating a => a -> a
timesPi x = pi * x

-- Exercises: Parentheses and Association
show1a :: Num a => a
show1a =  8 + 7 * 9

show1b :: Num a => a
show1b = (8 + 7) * 9

--  Yes. 7 * 9 takes precedence so the parenthesis combine the two values first

perimeter2a :: Num a => a -> a -> a
perimeter2a x y = (x * 2) + ( y * 2)

perimeter2b :: Num a => a -> a -> a
perimeter2b x y = x * 2 + y * 2

--  No as the * takes precedence over the +

f3a :: Fractional a => a -> a
f3a x = x / 2 + 9

f3b :: Fractional a => a -> a
f3b x = x / ( 2 + 9 )

-- Yes as otherwise the / takes precedence over addition

-- HEAL THE SICK

areaFromRadius :: Floating a => a -> a
areaFromRadius r = pi * (r * r)

double :: Num => a -> a
double x = x * 2


    
