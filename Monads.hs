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

--example from learn you a haskell for great good

type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Pole
landLeft n (left, right) = (left + n, right)

landRight :: Birds -> Pole -> Pole
landRight n (left, right) = (left, right + n )

x -: f = f x 
