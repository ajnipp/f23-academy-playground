//
//  WrongToDoItemView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct WrongToDoItemView: View {
    @Binding var todo: WrongToDo
    var body: some View {
        HStack {
            Button(action: {
                todo.isDone.toggle()
            }) {
                Image(systemName: todo.isDone ? "checkmark.square" : "square")
            }
            Text(todo.title)
        }
    }
}

#Preview {
    WrongToDoItemView(todo: .constant(WrongToDo.example))
}
