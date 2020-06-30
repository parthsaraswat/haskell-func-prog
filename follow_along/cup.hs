-- cup.hs
-- 'constructor'
cup flOz = \message -> message flOz
-- getOz function
getOz cup = cup (\flOz -> flOz)
-- drink function
drink aCup ozDrank = cup (flOz - ozDrank)
       where flOz = getOz aCup
-- testing vim
