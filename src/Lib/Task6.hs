module Lib.Task6 where

task6::Integer
task6 = ((^2) (sum [1..100])) - (sum (map (^2) [1..100]))
