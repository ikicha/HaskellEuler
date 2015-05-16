--If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
dividable :: Int -> Int -> Bool
dividable divider origin = mod origin divider == 0
adder a b = a + b

main = print (sum (filter(\x -> or [dividable 3 x, dividable 5 x]) (take (1000-1) (iterate (adder 1) 1))))
