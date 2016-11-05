module Lib.Task78 where
import Data.Array.Unboxed
import Data.Array.ST
import Control.Monad.ST
import Control.Monad
import Data.STRef



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

