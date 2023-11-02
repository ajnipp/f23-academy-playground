//
//  User.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import Foundation

struct UserStruct {
    var name: String
    var age: Int
    
    static var example: UserStruct {
        UserStruct(name: "Alec", age: 17)
    }
}

class UserClass {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    static var example: UserClass {
        UserClass(name: "Alec", age: 17)
    }
}
