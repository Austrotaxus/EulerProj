module Lib.Task1 where
task1::Int
task1 = sum $ filter (\x -> (x `mod` 3 ==0) || (x `mod` 5 ==0))  [1..999]
