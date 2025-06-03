fixedRate (name , cost) = (name , cost*0.1) 

progressiveRate (name,cost) 
    | cost <= 40000 = (name,cost*0.05)
    | otherwise = (name,cost*0.2)

lowRate (name,cost)
    | cost <= 30000 = (name,0)
    | otherwise = (name,cost*0.15)

luxuryRate (name,cost)
    | cost <=75000 = (name,cost*0.15)
    | otherwise = (name,cost*0.25)

sumOfList items = foldl(\acc (_,cost)->acc+cost) 0 items

calculateCost f items = (map f items)

main :: IO()
main = do
    let items = [("Alice", 50000), ("Bob", 40000), ("Charlie", 60000)]

    print "Choose your option"
    print "1 - Fixed rate"
    print "2 - Progreessive rate"
    print "3 - low Rate"
    print "5 - Luxury rate"

    choice <- getLine


    let updatedItems = map funct items
    let c = sumOfList updatedItems

    print updatedItems
    print c

