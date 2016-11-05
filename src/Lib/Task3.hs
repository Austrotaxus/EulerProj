module Lib.Task3 where

import qualified Math.NumberTheory.Primes.Factorisation as Factor

task3 = maximum $ map fst ( Factor.factorise 600851475143)
