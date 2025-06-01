
main :: IO ()
main = do
    putStrLn "Enter the number of students:"
    n <- getLine
    let numStudents = read n :: Int
    putStrLn "Enter the marks of the students, separated by space:"
    marksInput <- getLine
    let marks = read ("["++marksInput++"]") :: [Int]
    
    -- Calculate the class average (convert sum to Float explicitly)
    let totalMarks = sum marks
        classAverage = (totalMarks) `div` (numStudents) 
    
    -- Print class average
    putStrLn $ "Class average: " ++ show classAverage
    
    -- Count how many students have marks less than the class average
    let belowAverageCount = length (filter (< classAverage) (marks))
    
    -- If more than 2 students have marks below the average, display a message
    if belowAverageCount > 2
        then putStrLn (show(belowAverageCount)++" Studnets scored below average")
        else putStrLn "Less than or equal to 2 students have marks below the class average."
