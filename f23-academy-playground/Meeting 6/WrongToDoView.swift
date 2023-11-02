//
//  WrongToDo.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct WrongToDoView: View {
    @State private var todos: [WrongToDo] = []
    @State private var text = ""
    var body: some View {
        Form {
            Section("Enter Todo") {
                TextField("Enter todo", text: $text)
                    .onSubmit {
                        let newdo = WrongToDo(title: text)
                        todos.append(newdo)
                    }
            }
            Section("Todos") {
                ForEach(todos) { todo in
                    WrongToDoItemView(todo: todo)
                }
            }
        }
    }
}

#Preview {
    WrongToDoView()
}
