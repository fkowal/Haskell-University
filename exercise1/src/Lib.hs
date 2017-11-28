module Lib
    (
    greetUser,
    greetLoop
    ) where

greet :: IO ()
greet = putStrLn "Hello, what is your name?"

getName :: IO String
getName = getLine

sayHi :: String -> IO ()
sayHi name = putStrLn ("Nice to meet you " ++ name)

greetUser :: IO ()
greetUser = greet >> (getName >>= sayHi)

greetLoop :: IO ()
greetLoop = greetUser >> greetLoop
-- greetUser =
--         putStrLn "Hello, what is your name?" >> (readLn >>= (\name -> putStrLn ("Nice to meet you " ++ name)))
