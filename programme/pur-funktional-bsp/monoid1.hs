import Data.Monoid

-- Define a new data type
newtype Sum = Sum { getSum :: Int } deriving (Show)

-- Make Sum an instance of Monoid
instance Monoid Sum where
    mempty = Sum 0
    (Sum x) `mappend` (Sum y) = Sum (x + y)

main :: IO ()
main = do
    let a = Sum 5
    let b = Sum 10
    let result = a `mappend` b
    print result  -- Output: Sum {getSum = 15}
