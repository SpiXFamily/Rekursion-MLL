-- Fakultätsfunktion
fakultaet :: Integer -> Integer
fakultaet 0 = 1 --Basisfall
fakultaet n = n * fakultaet (n - 1) --Rekursionfall

main :: IO ()
main = do
    putStrLn "Bitte geben Sie eine natürliche Zahl ein:"
    input <- getLine
    let zahl = read input :: Integer
    if zahl < 0
        then putStrLn "Bitte geben Sie eine nicht-negative Zahl ein."
        else putStrLn $ "Die Fakultät von " ++ show zahl ++ " ist " ++ show (fakultaet zahl)
