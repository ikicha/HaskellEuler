--A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

--Find the largest palindrome made from the product of two 3-digit numbers.

flatmap _ [] = []
flatmap f (x:xs) = f x ++ flatmap f xs

multiplyList:: [Int] -> Int -> [Int]
multiplyList list x = map (x  *) list

isPalindrome str = str == (reverse str)
isPalindromeNumber = isPalindrome . show

maxIn = foldl max 0 
main = print (maxIn (filter (isPalindromeNumber) (flatmap (multiplyList [100..999]) [100..999])))
