module Lib.Task2 where

import qualified Data.List as List
    
task2 = sum $ filter isEven $ takeWhile (<4000000) fibs 
    where fibs = List.unfoldr (\(a,b) -> Just (a,(b,a+b))) (0,1)
          isEven x = x `mod` 2 ==0
