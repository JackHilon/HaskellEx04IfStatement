
myAction::String -> Int -> Bool -> IO ()
myAction weather distanceKm feul = do 
    if (weather == "rainy" && distanceKm > 10 && feul)
        then putStrLn("You have to drive a car")
    else if (weather == "rainy" && distanceKm > 10 && not feul)
        then putStrLn("You can not drive the car")
    else putStrLn("You can walk")


personInfo:: String -> Int -> IO ()
personInfo name age = putStrLn("Persons name: " ++ name ++ " his age is: " ++ show age)

personInfoAsString:: String -> Int -> String
personInfoAsString name age = ("Persons name: " ++ name ++ " his age is: " ++ show age)

cube:: Int -> Int
cube a = a * a * a

cube1:: Double -> Double
cube1 a = a ** 3

simpleDiv::Double -> Double -> Double
simpleDiv a b = a / b

simpleIfFunction::String -> IO ()
simpleIfFunction word = do
    if word == "Stop"
        then putStrLn(word ++ " " ++ word)
    else putStrLn("Nothing!")

main = do 
    personInfo "Tom" 22
    personInfo "Anna" 23
    putStrLn (personInfoAsString "Jim" 34)
    print(cube 4)
    print(cube1 4)
    print(simpleDiv 5 10)
    simpleIfFunction "Hey"
    simpleIfFunction "Stop"
    putStrLn("..........................................")
    putStr("Enter weather status: ")
    weatherToDay <- getLine
    putStr("Enter the distance: ")
    yourDistance <- getLine
    putStr("is there any feul in your car (True/False): ")
    feulCar <- getLine
    let distKm = read yourDistance::Int
    let feulState = read feulCar::Bool
    myAction weatherToDay distKm feulState
    putStrLn("..........................................")
    putStr("Enter logic value (True/False): ")
    logicValueAsString <- getLine
    let logicValue = read logicValueAsString::Bool
    print(logicValue)

    
