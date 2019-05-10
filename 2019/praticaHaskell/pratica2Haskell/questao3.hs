difference :: Int -> [Int] -> [Int]
difference x [] = []
difference x (h:t) | x == h = t
    | otherwise = [h] ++ difference x t

contPares :: [Int] -> Int
contPares [] = 0
contPares (n:ns)
 |elem n ns = 1 + contPares (difference n ns)
 |otherwise = contPares ns

main :: IO()
main = do
    input <- getLine
    let lista = read input
    print $ contPares lista