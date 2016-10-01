module Main where

import Lib

main :: IO ()
main = do
  putStrLn "Input the number of needed task"
  x <- getLine
  case x of
    "78" -> print task78
    "188" -> print task188
    _ -> putStrLn "Task is not implemented yet"
