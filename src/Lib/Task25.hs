module Lib.Task25 where
    import Data.List 
    import Data.Maybe
    fibs = unfoldr (\(a,b,i) -> Just ((a,i),(b,a+b,i+1))) (1,1,1)
    task25 =  snd $ fromJust $ find (\(a,i) -> div a ((10^999)::Integer) > 0 ) fibs
