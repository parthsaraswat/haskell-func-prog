-- L5 follow along
-- original ifEven x
ifEven func n = if even n
                then func n
                else n
-- Quick Check 5.1: Write a function genIfXEven that creates a closure with x and returns a new function that allows the user to pass in a function to apply to x if x is even.
genIfXEven x = (\f -> ifEven f x)
-- Get Request URL: takes parameters and builds an API URL
getRequestURL host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey
-- create a closure with host (going from needing to apply 4 parameters to needing to apply 3)

exampleHostBuilder host = (\apiKey resource id -> getRequestURL host apiKey resource id)

-- create a closure around apiKey (go from needing 3 to 2)

genApiRequestBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)

-- QC 5.4
-- Use flip and partial application to create a function called subtract2 that
-- removes 2 from whatever number is passed in to it.

subtract2 x = flip (-) 2