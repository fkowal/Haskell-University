module Lib
    (
    greetUser,
    greetLoop,
    greetLoop2
    ) where

import Control.Monad

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

greetLoop2 :: IO ()
greetLoop2 = forever greetUser
-- greetUser =
--         putStrLn "Hello, what is your name?" >> (readLn >>= (\name -> putStrLn ("Nice to meet you " ++ name)))
