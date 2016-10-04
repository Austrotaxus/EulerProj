module Lib
    ( task78 , task188, task1
    ) where
import Data.Array.Unboxed
import Data.Array.ST
import Control.Monad.ST
import Control.Monad
import Data.STRef
task1::Int
task1 = sum $ filter (\x -> (x `mod` 3 ==0) || (x `mod` 5 ==0))  [1..999]
    
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



hyperExpMod base 0 m = 1
hyperExpMod base pow m = expMod base (hyperExpMod base (pow-1) m) m
expMod b p m = expModIter 1 b p m
expModIter res b p m
    | p==0 = res `mod` m
    | p `mod` 2 == 0 = expModIter res ((b^2)`mod`m) (div p 2) m
    | otherwise = expModIter (res*b `mod` m) (b`mod`m) (p-1) m
