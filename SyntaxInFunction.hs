-- pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number seven!"
lucky x = "Sorry, you're out of luck, pal"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe 6 = "Six"
sayMe 7 = "Seven"
sayMe 8 = "Eight"
sayMe 9 = "Nine"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

-- pattern matching in list comprehensions
sumList :: Num a => [(a, a)] -> [a]
sumList [] = []
sumList xs = [x + y | (x, y) <- xs]

--pattern match of list with condition guard
nth :: [a] -> Int -> Maybe a
nth [] n = Nothing
nth (x:xs) n
  | n == 0  = Just x
  | n < 0 = Nothing
  | otherwise = nth xs (n-1)

--pattern matching with where
maxAge :: [(String,Int)] -> (String, Int)
maxAge [] = error "empty list"
maxAge [x] = x
maxAge ((name,age) : xs)
  | age < snd maxTail = maxTail
  | otherwise = (name,age)
  where
    maxTail = maxAge xs

--let
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + 2 * topArea
  


