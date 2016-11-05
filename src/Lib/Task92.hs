module Lib.Task92(task92) where
import qualified Data.IntMap as IMap
import Control.Monad.State as State
import qualified Data.List as List


task92 = length $ List.filter (==89)  $evalState (mapM processNumber [1..10000000]) IMap.empty 
numToList x=  List.unfoldr (\a -> case a of
                                0 -> Nothing
                                _ -> Just (mod a 10,div a 10)) x

iter x = sum $ map (^2) $ numToList x
determineNumber::Int-> State.State (IMap.IntMap Int) Int
determineNumber x 
    |x==89||x==1 = return x
    |otherwise = processNumber x

processNumber n = do
  m <- get
  if (IMap.member n m)
  then return (m IMap.! n)
  else do
    t <- determineNumber (iter n)
    modify (IMap.insert n t)
    return t

result l =  runState (mapM determineNumber l) IMap.empty 
