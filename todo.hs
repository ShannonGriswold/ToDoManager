add list toAdd = list ++ [toAdd]

printTask list taskInput = 
    list

search list taskInput = 
    list

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
            putStrLn "in print"
            taskInput <- getLine
            let newList = printTask list taskInput
            task newList

        else if input == "search" then do
            putStrLn "in search"
            taskInput <- getLine
            let newList = search list tail
            task newList
            
        else do
            putStrLn "Error"


main = do
    putStrLn "Welcome to ChoreChart - your To Do Manager"
    task []
