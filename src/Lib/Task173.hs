module Lib.Task173 
where
  laminasNum::Int -> Int
  laminasNum x = length $
                 filter (\d-> ((div x d) `mod` 2 == d `mod` 2))$
                 filter (\d -> x `mod` d ==0)
                 [1.. (ceiling (sqrt (fromIntegral x))) - 1]
