//
//  WrongToDoModel.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import Foundation

struct WrongToDo: Identifiable {
    var isDone = false
    var title: String
    let id = UUID()

    static var example: WrongToDo {
        WrongToDo(title: "Walk dog")
    }
}


