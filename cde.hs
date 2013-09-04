module Main where 

import System.Environment
import Text.Read

data Devise = Euro Double
            | Dollar Double
            deriving (Show, Eq, Ord)

cde :: Devise -> Devise
cde a = case a of
  Euro a -> Dollar $ a * devise
  Dollar a -> Euro $ a / devise
  where devise = 1.3166

parseOpt x y 
  | y == "d" = Dollar (read x:: Double)
  | y == "e" = Euro (read x:: Double)
  | otherwise = Euro 0

main = do
  [x, y] <- getArgs
  putStrLn . show . cde $ parseOpt x y
