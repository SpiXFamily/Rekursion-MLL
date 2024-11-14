import Data.Monoid

-- Define a function that uses the Monoid instance for lists
concatLists :: [[Int]] -> [Int]
concatLists = mconcat

main :: IO ()
main = do
    let lists = [[1, 2], [3, 4], [5]]
    print $ concatLists lists  -- Output: [1, 2, 3, 4, 5]
