module Lib.Task9
    where
 
task9 = head [a*b*(1000-a-b)| b<-[1 .. 1000] ,a<-[1..1000], a^2 + b^2 == (1000-a-b)^2 ]
