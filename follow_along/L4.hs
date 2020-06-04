-- Following along in L4
import Data.List
-- QC 4.1: ifEven, cube a function. use lambdas

ifEven func n = if even n
                then func n
                else n

-- sorting
names = [("Ian", "Hook"),
        ("Bernard","Sumner"),
        ("Peter", "Hook"),
        ("Stephen","Morris")]
compareLastNames name1 name2 = if lastName1 > lastName2
                                then GT
                                else if lastName1 < lastName2
                                then LT
                                else if firstName1 > firstName2
                                    then GT
                                    else if firstName1 < firstName2
                                        then LT
                                        else EQ
                                where lastName1 = snd name1
                                      lastName2 = snd name2
                                      firstName1 = fst name1
                                      firstName2 = fst name2