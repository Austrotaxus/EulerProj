module Lib.Task24
    where
      import Data.List  
      

      task24 = (flip (!!)) 999999 $ sort $ permutations "0123456789" 
