//
//  ToDoList.swift
//  tweiq project 1
//
//  Created by Areej Mohammad on 18/03/1443 AH.
//

import Foundation

class ToDoList {
    
    static var todo : [ToDo] = []
    
    
    static func addNewToDo(todo: ToDo) {
        self.todo.append(todo)
    }
    
    static func editToDo(index: Int, newName: String, newDescription: String, newDeadline: String?) {
        todo[index].name = newName
        todo[index].description = newDescription
        
        guard let newDeadline = newDeadline else {
            return
        }
        if let newDate = ToDo.getDateFromString(string: newDeadline) {
            todo[index].deadline = newDate
        }
    }
    
    
    static func checkToDo() {
        
        todo.forEach { todo in
            print("\(todo.name) \(todo.description)\(todo.deadline)")
        }
        
    }
    
    static func removeToDo(id: Int) {
        
        todo.remove(at: id)
        //        todo.removeAll { p in
        //            return p.name == name
        print("done")
    }
}


