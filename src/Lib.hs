module Lib where
import Data.Array.Unboxed
import Data.Array.ST
import Control.Monad.ST
import Control.Monad
import Data.STRef
import qualified Data.List as List
import qualified Math.NumberTheory.Primes.Factorisation as Factor
task1::Int
task1 = sum $ filter (\x -> (x `mod` 3 ==0) || (x `mod` 5 ==0))  [1..999]

task2 = sum $ filter isEven $ takeWhile (<4000000) fibs 
    where fibs = List.unfoldr (\(a,b) -> Just (a,(b,a+b))) (0,1)
          isEven x = x `mod` 2 ==0

task3 = maximum $ map fst ( Factor.factorise 600851475143)

      
task4 = maximum $ filter (isPoly . toList)[a*b|a<-[999,998..100], b<-[999,998..100]]
    where toList x= List.unfoldr (\a -> case a of
                                         0 -> Nothing
                                         _ -> Just (mod a 10,div a 10)) x
          isPoly x = x == reverse x

task5 = foldl lcm 1 [1..20]
task78 =head $ runST$ (lookup n)         
    where
      n = 100000::Int
      lookup n =  do
        res <- (newSTRef [])
        aR <- ((newArray (0,n) 1)::ST s (STUArray s Int Int))
        forM_ [(2::Int)..n] $
                  \i -> do 
                    forM_ [i..n] $ \j ->
                        do
                          v <- readArray aR (j-i)
                          w <- readArray aR j
                          writeArray aR j ((v+w)`mod` 1000000)
                    p <- readArray aR i
                    if (p == 0)
                    then   modifySTRef res (\x -> x ++ [i] )
                    else return ()
        readSTRef res
                   
                                                
                                         
                                     
task188 :: Integer
task188 = hyperExpMod 1777 1855 100000000
          where
            hyperExpMod base 0 m = 1
            hyperExpMod base pow m =
                expMod base (hyperExpMod base (pow-1) m) m
            expMod b p m = expModIter 1 b p m
            expModIter res b p m
                | p==0 = res `mod` m
                | p `mod` 2 == 0 = expModIter res ((b^2)`mod`m) (div p 2) m
                | otherwise = expModIter (res*b `mod` m) (b`mod`m) (p-1) m

