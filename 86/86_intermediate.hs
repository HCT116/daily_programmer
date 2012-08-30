weekdays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
monthdays = [31,28,31,30,31,30,31,31,30,31,30,31]
monthdaysleap = [31,29,31,30,31,30,31,31,30,31,30,31]

doomsday :: (Integral a) => a -> a
doomsday y = (2 + y + (y `div` 4) - (y `div` 100) + (y `div` 400)) `mod` 7

dayofyear :: Int -> Int -> Int -> Int
dayofyear d m y
    | (y `mod` 400) == 0 = sum(take (m-1) monthdaysleap) + d
    | (y `mod` 100) == 0 = sum(take (m-1) monthdays) + d
    | (y `mod` 4) == 0 = sum(take (m-1) monthdaysleap) + d
    | otherwise = sum(take (m-1) monthdays) + d

finalday d m y = weekdays !! ((dayofyear d m y - dayofyear 4 4 y) `mod` 7 + doomsday y)

