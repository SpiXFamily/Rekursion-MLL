-- Funktion, um die Schritte zur Lösung des Turms von Hanoi zu drucken
hanoi :: Int -> String -> String -> String -> [String]
hanoi 0 _ _ _ = []
hanoi n source target auxiliary =
    hanoi (n - 1) source auxiliary target ++
    ["Bewege Scheibe " ++ show n ++ " von " ++ source ++ " nach " ++ target] ++
    hanoi (n - 1) auxiliary target source

-- Hauptfunktion, um das Ergebnis anzuzeigen
main :: IO ()
main = do
    let n = 3  -- Anzahl der Scheiben
    let steps = hanoi n "A" "C" "B"
    mapM_ putStrLn steps

