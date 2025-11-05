add list toAdd = list ++ [toAdd]


printTask (x:xs) = do 
    putStrLn $ "\t" ++ x
    printTask xs

printTask [] = return ();


search (x:xs) taskInput = do
    if x == taskInput then putStrLn $ "Found " ++ taskInput 
    else  search xs taskInput

search [] taskInput = putStrLn $ "Could not find " ++ taskInput


    

task list = do
    putStrLn "Below are the options:"
    putStrLn "\tadd"
    putStrLn "\tprint"
    putStrLn "\tsearch"
    putStrLn "Enter option:"
    input <- getLine

    if input == "add" 
        then do
            putStrLn "Enter Task to Add: "
            taskInput <- getLine
            let newList = add list taskInput
            task newList

        else if input == "print" then do
            putStrLn "Here are your tasks: "
            printTask list 
            task list

        else if input == "search" then do
            putStrLn "Enter task to search"
            taskInput <- getLine 
            search list taskInput
            task list
            
        else do
            putStrLn "Error"


main = do
    putStrLn "Welcome to ChoreChart - your To Do Manager"
    task []
