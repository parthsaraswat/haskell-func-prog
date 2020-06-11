-- Following along to L6

-- Q6.1: take a value, repeat it infinitely

myrepeat n = cycle [n]

-- Q6.2 subsequence: take start, end, and a list and return the subseq

subseq start end aList = take n ( drop start aList )
                         where n = end - start

-- Q6.3 inFirstHalf takes a list and an element and says whether element is in first half or not

inFirstHalf val aList = elem val firstHalf
                    where midpoint = (length aList) `div` 2
                          firstHalf = take midpoint aList
                          