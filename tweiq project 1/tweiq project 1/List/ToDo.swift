//
//  ToDo.swift
//  tweiq project 1
//
//  Created by Areej Mohammad on 19/03/1443 AH.
//

import Foundation

class ToDo {
    
    var name :String
    var description : String
    var deadline : Date?
    
    init (name : String , description: String ,deadline : Date?) {
        self.name = name
        self.description = description
        self.deadline = deadline
    }
    
    static func getDateFromString(string: String) -> Date?  {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        if let newDate = formatter.date(from: string) {
            return newDate
        } else {
            return nil
        }
    }
}

