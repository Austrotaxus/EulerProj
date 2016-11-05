module Lib.Task188 where
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
