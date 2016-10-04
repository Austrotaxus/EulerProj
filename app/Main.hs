module Main where

import Lib

main :: IO ()
main = do
  putStrLn "Input the number of needed task"
  x <- getLine
  case x of
    "1"-> print task1
    "2" -> print task2
    "3" -> print task3
    "4" -> print task4
    "78" -> print task78
    "188" -> print task188
    _ -> putStrLn "Task is not implemented yet"
