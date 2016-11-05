module Lib.Task4 where
import Data.List as List
task4 = maximum $ filter (isPoly . toList)[a*b|a<-[999,998..100], b<-[999,998..100]]
    where toList x= List.unfoldr (\a -> case a of
                                         0 -> Nothing
                                         _ -> Just (mod a 10,div a 10)) x
          isPoly x = x == reverse x
