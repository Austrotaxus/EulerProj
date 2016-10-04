module Main where
import qualified Data.Map as Map
import Lib

main :: IO ()
main = do
  putStrLn "Input the number of needed task"
  x <- getLine
  case (Map.lookup ((read x)::Int) allTasks ) of
    Just x -> putStrLn x
    Nothing -> putStrLn "Task is not implemented yet"
