main :: IO()
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    passos <- readLn :: IO Int
    lado <- getLine
    putStrLn (andar x y passos lado)

andar :: Int -> Int -> Int -> String -> String
andar x y passos lado
    |lado == "frente" = quadrante x (y+passos)
    |lado == "tras" = quadrante x (y-passos)
    |lado == "direita" = quadrante (x+passos) y
    |lado == "esquerda" = quadrante (x-passos) y
    |otherwise = quadrante x y

quadrante :: Int -> Int -> String
quadrante x y
    |x == 0 && y == 0 = "origem"
    |x == 0 && y /= 0 = "eixo y"
    |x /= 0 && y == 0 = "eixo x"
    |x > 0 && y > 0 = "primeiro quadrante"
    |x < 0 && y > 0 = "segundo quadrante"
    |x < 0 && y < 0 = "terceiro quadrante"
    |x > 0 && y < 0 = "quarto quadrante"