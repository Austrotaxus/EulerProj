module Lib.Task31 
    where
      import Data.Array
      import Debug.Trace
      memoCoinsum n s = (fmap ( \(i,j)-> coinsum i j )( array ((0,0),(9,200)) [((i,j),(i,j))|i<-[1..8],j<-[0..200]] ) ) ! (n,s)
                              where
                                nominals = [1,2,5,10,20,50,100,200]
                                coinsum 1 _ = 1
                                coinsum _ 0 = 1
                                coinsum n s = (memoCoinsum ( n - 1 ) s ) +
                                              if (  s >= ( nominals !! ( n-1 ) ) )
                                              then (memoCoinsum n ( s - ( nominals !! ( n-1 ) ) ) )
                                              else 0
