-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

range :: Int -> Int -> [Int]
range a b = [a..b]

first :: [Int] -> Int
first [] = 0
first list = list!!0

intSqrt n = round ((intToFloat n) ** (1/2))
intToFloat :: Int -> Float
intToFloat a = fromInteger(toInteger a)

canDivideFrom :: Int -> Int -> Bool
canDivideFrom n divider = (mod n divider) == 0

prime = filter (\x -> and (map (not.canDivideFrom x) (range 2 (intSqrt x)))) [2..]

main = print ((first.reverse.(filter (canDivideFrom 600851475143)).(takeWhile (<(intSqrt 600851475143)))) prime)
