contaPassosAux :: [(String, Int)] -> Int
contaPassosAux [] = 0
contaPassosAux ((nome, valor):ns) = valor + contaPassosAux ns

contaPassos :: [[(String, Int)]] -> Int
contaPassos [] = 0
contaPassos (n:ns) = contaPassosAux n + contaPassos ns

main :: IO()
main = do
    n <- readLn :: IO [[(String, Int)]]
    print (contaPassos n)