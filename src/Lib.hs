module Lib (allTasks) where

import Lib.Task1
import Lib.Task2
import Lib.Task3
import Lib.Task3
import Lib.Task4
import Lib.Task5
import Lib.Task6
import Lib.Task7
import Lib.Task8
import Lib.Task9
import Lib.Task10
import Lib.Task78
import Lib.Task188
import Lib.Task92
import Lib.Task31
import Lib.Task24
import Lib.Task25
import Data.Map

allTasks:: Map Int (IO String)
allTasks = fromList [(1,return (show task1)),
                     (2,return (show task2)),
                     (3,return (show task3)),
                     (4,return (show task4)),
                     (5,return (show task5)),
                     (6,return (show task6)),                   
                     (7,return (show task7)),
                     (8,return (show task8)),
                     (9,return (show task9)),
                     (10,return (show task10)),
                     (24,return  task24),
                     (31,return (show task31)),
                     (92,return (show task92)),
                     (78,return (show task78)),
                     (188,return (show task188)),
                     (25, return (show task25))]










