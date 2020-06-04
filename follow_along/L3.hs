-- writing functions without a where clause

sumSquareOrSquareSum x y = (\sumSquare squareSum -> 
                            if (sumSquare > squareSum)
                                then sumSquare
                            else squareSum) (x^2+y^2) ((x+y)^2)

-- QC exercise
doubleDouble x = dubs*2
                where dubs = x*2

doubleDoubleLambda x = (\dubs -> dubs*2) (x*2)

--- QC 3.3: overwrite using lambdas
-- original
overwrite x = let x = 2
                in
                let x = 3
                    in
                    let x = 4
                        in
                            x
-- lambda'd
overwriteL x = (\x->(\x->(\x->x)4)3)2
