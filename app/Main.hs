module Main where
import Data.Map as Map
import Lib



main :: IO ()
main = do
  print ("The tasks are already implemented: " ++ ( show ( keys allTasks ) ))
  n <- readLn
  x <- allTasks ! ( n  :: Int)
  print x
