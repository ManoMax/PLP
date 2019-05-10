spaces :: Int -> String
spaces 0 = ""
spaces n = " " ++ spaces(n - 1)

asterisk :: Int -> String
asterisk 0 = ""
asterisk n = "*" ++ asterisk(n - 1)


makeTree :: Int -> Int -> Int -> IO()
makeTree maximo ns na
    | (maximo == na) = do
        print $ (spaces ns) ++ (asterisk na)
    | otherwise = do
        print $ (spaces ns) ++ (asterisk na)
        makeTree maximo (ns - 1) (na + 1)

main :: IO()
main = do
    n <- readLn :: IO Int
    makeTree n (n-1) 1