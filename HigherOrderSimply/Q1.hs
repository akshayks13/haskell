-- Shipping cost calculation functions
flatRateShipping :: (String, Double, Double) -> (String, Double, Double)
flatRateShipping (name, price, weight) = (name, price, 100.0)

weightBasedShipping :: (String, Double, Double) -> (String, Double, Double)
weightBasedShipping (name, price, weight) = (name, price, weight * 5.0)

freeShippingLowWeight :: (String, Double, Double) -> (String, Double, Double)
freeShippingLowWeight (name, price, weight)
    | weight < 2 = (name, price, 0.0)
    | otherwise  = (name, price, weight * 5.0)

expressShipping :: (String, Double, Double) -> (String, Double, Double)
expressShipping (name, price, weight) = (name, price, weight * 10.0)

-- Higher-order function to apply the chosen shipping function
calculateShipping :: ((String, Double, Double) -> (String, Double, Double)) 
                  -> [(String, Double, Double)] 
                  -> [(String, Double, Double)]
calculateShipping shippingFunc items = map shippingFunc items

-- Compute total shipping cost using foldl
totalShippingCost :: [(String, Double, Double)] -> Double
totalShippingCost items = foldl (\acc (_, _, cost) -> acc + cost) 0 items

totalshcost [] = 0
totalshcost items = sum [cost | (_, _, cost) <- items]

totalshicost [] = 0
totalshicost ((_, _, cost) : xs) = cost + totalshicost xs

-- Main function
main :: IO ()
main = do
    let items = [("Laptop", 65000, 5), ("Book", 300, 1), ("TV", 10000, 10)]
    
    putStrLn "Choose a shipping category:"
    putStrLn "1 - Flat Rate Shipping"
    putStrLn "2 - Weight-Based Shipping"
    putStrLn "3 - Free Shipping for Low Weight Orders"
    putStrLn "4 - Express Shipping"
    
    choice <- getLine
    
    let shippingFunc = case choice of
            "1" -> flatRateShipping
            "2" -> weightBasedShipping
            "3" -> freeShippingLowWeight
            "4" -> expressShipping
            _   -> flatRateShipping  -- Default case

    -- or

    let shippingFunc_ = if choice == "1" then flatRateShipping
        else if choice == "2" then weightBasedShipping
        else if choice == "3" then freeShippingLowWeight
        else if choice == "4" then expressShipping
        else flatRateShipping  -- Default case

    
    let updatedItems = calculateShipping shippingFunc items
    let totalCost = totalShippingCost updatedItems
    
    putStrLn "Updated Shipping Costs:"
    print updatedItems
    print ("Total Shipping Cost: " ++ show totalCost)
