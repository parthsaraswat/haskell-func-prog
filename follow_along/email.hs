-- Learning how to modularize Haskell code
toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart body = "Thanks for buying " ++ body ++ ".\n"
fromPart author = "Best, \n" ++ author

createEmail recipient body author = toPart recipient ++
                                    bodyPart body ++
                                    fromPart author

main = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print (createEmail recipient title author)