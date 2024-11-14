-- Funktion zur Berechnung der Wahrscheinlichkeit, dass n Personen an verschiedenen Tagen Geburtstag haben
birthdayProbability :: Int -> Double
birthdayProbability n
    | n > 365 = 0.0  -- Wenn mehr als 365 Personen, ist die Wahrscheinlichkeit 0
    | n == 0 = 1.0   -- Wenn keine Personen, ist die Wahrscheinlichkeit 1
    | otherwise = product [(365 - fromIntegral k) / 365 | k <- [0..(n-1)]]

main :: IO ()
main = do
    putStrLn "Geben Sie die Anzahl der Personen ein:"
    input <- getLine
    let n = read input :: Int
    let probability = birthdayProbability n
    putStrLn $ "Die Wahrscheinlichkeit, dass " ++ show n ++ " Personen an verschiedenen Tagen Geburtstag haben, ist: " ++ show probability


