module Lib.Task10 where
import qualified Data.Numbers.Primes as Primes

task10::Integer
task10 = sum $ takeWhile (<2000000) Primes.primes
