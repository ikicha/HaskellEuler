double n = n * n

triplet n = [ (a, b, n - a -b) | a <- [1..998], b <- [1..(998 - a)], a < b, b < n - a - b, double a + double b == double (n - a - b)]

tripleProduct (a, b, c) = a * b * c

solve = tripleProduct .head. triplet

main = print $ solve 1000 
