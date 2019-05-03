toHex :: Int -> String
toHex a
    | a == 10 = "A"
    | a == 11 = "B"
    | a == 12 = "C"
    | a == 13 = "D" 
    | a == 14 = "E"
    | a == 15 = "F"
    | otherwise = show a

myDiv :: Int -> Int -> Int
myDiv a b = 
    let x = fromIntegral a
        y = fromIntegral b
    in truncate (x / y)

intToHex :: Int -> String
intToHex value =
    if(value < 16) then (toHex value)
    else (intToHex ans) ++ (toHex $ mod value 16)
    where ans = myDiv value 16

main :: IO()
main = do 
    input <- readLn :: IO Int
    putStrLn $ intToHex input