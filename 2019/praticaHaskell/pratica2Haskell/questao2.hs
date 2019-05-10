invertString :: String -> String
invertString [] = []
invertString (h:t) = invertString t ++ [h]

cutInvertedString :: Bool -> String -> String
cutInvertedString first [] = []
cutInvertedString True (h:t) = cutInvertedString False t
cutInvertedString False (h:t) = [h] ++ cutInvertedString False t


isPalindrome :: String -> Bool
isPalindrome str | str == invertString str = True
    | otherwise = False

palindrome :: String -> String
palindrome str = str ++ cutInvertedString True (invertString str)

palindromeCity :: String -> String
palindromeCity str | isPalindrome str = str
    | otherwise = palindrome str

main :: IO()
main = do
    entrada <- getLine
    putStrLn (palindromeCity entrada)