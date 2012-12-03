module Monads where

greet = do
  putStrLn "Hello, what's your name?"
  name <- getLine
  putStrLn ("Welcome " ++ name)

fortune = do
  putStrLn "Hey, what's your name?"
  name <- getLine
  putStrLn tellFortune
  where
    tellFortune = "fortune is kind of you"

