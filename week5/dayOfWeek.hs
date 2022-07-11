data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec  deriving (Enum,Read, Show)
data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday deriving (Enum,Read, Show)


type MD = Int
type Y = Int
type Date = (MD, Month, Y)






dayOfWeek :: Date -> Day
dayOfWeek day
   | (numDays day `rem` 7 == 0) == True = Saturday
   | (numDays day `rem` 7 == 1) == True = Sunday
   | (numDays day `rem` 7 == 2) == True = Monday
   | (numDays day `rem` 7 == 3) == True = Tuesday
   | (numDays day `rem` 7 == 4) == True = Wednesday
   | (numDays day `rem` 7 == 5) == True = Friday
   | (numDays day `rem` 7 == 6) == True = Friday


numDays :: (Int, Month, Int) -> Int

numDays (day, month, year) = ( sumDays year ) + (sumNth (fromEnum month) (mLengths year)) + day



mLengths :: Int -> [Int] --Amount of days in leap year
mLengths a
    | (rem a 400) == 0 || (rem a 4) == 0 && (rem a 100 /= 0) = [31,29,31,30,31,30,31,31,30,31,30,31]
    | otherwise = [31,28,31,30,31,30,31,31,30,31,30,31]


sumDays :: Int -> Int --Sumdays from nth year to 1752
sumDays 1753 = 0 
sumDays year
    |leap year = let countRest = sumDays (year - 1) in countRest + 366
    |otherwise = let countRest = sumDays (year - 1) in countRest + 365


sumNth :: Int -> [Int]  -> Int --Sum days in specific year
sumNth count [] = 0
sumNth 0 _ = 0 
sumNth count (x:xs) = x + sumNth (count - 1) xs



leap :: Int -> Bool
leap a
    | (rem a 400) == 0 || (rem a 4) == 0 && (rem a 100 /= 0) = True
    | otherwise = False

 




main :: IO()
main = do
    print (dayOfWeek (31,Dec,2099))
    print (numDays (7,Jan,1753))
    print (numDays (13,Mar,2054))
