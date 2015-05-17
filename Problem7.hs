intSqrt n = round ((intToFloat n) ** (1/2))
intToFloat :: Int -> Float
intToFloat a = fromInteger(toInteger a)

canDivideFrom :: Int -> Int -> Bool
canDivideFrom n divider = (mod n divider) == 0

prime = filter (\x -> and (map (not.canDivideFrom x) ([2..(intSqrt x)]))) [2..]

main = print (prime !! 10000)
