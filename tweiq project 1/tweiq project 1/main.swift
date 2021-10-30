//
//  main.swift
//  tweiq project 1
//
//  Created by Areej Mohammad on 15/03/1443 AH.
//

import Foundation

var userInput: Int?
print("===== Hello to (TO DO List) =====")

while(userInput != 0) {
    print("what do you want to do !")
    print("if you want to add new to do for your list press 1")
    print("if you want to edit to do from your list press 2")
    print("if you want to check your list press 3")
    print("if you want to remove to do from your list press 4")
    print("if you want to end program press 0")
    print ("The number is ", terminator: "" )
    userInput = Int(readLine()!)!
    
    if userInput == 1 {
        print("name is:", terminator: "")
        let name = Utils.readString()
        print("description is:", terminator: "")
        let description = Utils.readString()
        print("deadline is:", terminator: "")
        let date = Utils.readString()
        let deadline = ToDo.getDateFromString(string: date)
        
        let newTodo = ToDo(name: name, description: description, deadline: deadline)
        
        ToDoList.addNewToDo(todo: newTodo)
        
    }

else if userInput == 2 {
    print("index is:", terminator: "")
    let index = Utils.readInt()
    print("name is:", terminator: "")
    let name = Utils.readString()
    print("description is:", terminator: "")
    let desc = Utils.readString()
    print("deadline is:", terminator: "")
    let deadline = Utils.readString()
    ToDoList.editToDo(index: index, newName: name, newDescription: desc, newDeadline: deadline)
}
    else if userInput == 3 {
        ToDoList.checkToDo()
    }
    else if userInput == 4 {
        print("index is:", terminator: "")
        let id = Utils.readInt()
//        let newTodo = ToDo.init(name: name, description: description, deadline: nil)
        ToDoList.removeToDo(id:id)
    }
else {
    print("invallid input press again")}
}


