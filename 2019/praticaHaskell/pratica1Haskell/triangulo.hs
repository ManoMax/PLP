criaLinha :: Int -> Int -> String
criaLinha espaco aste
 |espaco > 0 = (criaLinha (espaco-1) (aste)) ++ " "
 |aste > 0 = (criaLinha (espaco) (aste-1)) ++ "*"
 |otherwise = ""

criaPiramide :: Int -> Int -> IO()
criaPiramide altura alturaAtual
 |altura >= 0 = do 
    putStrLn (criaLinha (altura) (alturaAtual)) 
    criaPiramide (altura-1) (alturaAtual+1)
 |otherwise return ()

main :: IO()
main = do
    n <- readLn :: IO Int
    criaPiramide n 1