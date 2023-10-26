//
//  ToDos.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import SwiftUI

struct ToDos: View {
    @State private var items = [ToDo.example, ToDo(title: "Find map")]
    var body: some View {
        List {
            ForEach($items) { todo in
                ToDoItemView(item: todo)
            }
        }
    }
}

struct ToDoItemView: View {
    @Binding var item: ToDo
    var body: some View {
        HStack {
            Text("\(item.title)")
            Spacer()
            Button {
                item.isDone.toggle()
            } label: {
                Image(systemName: item.isDone ? "circle.fill" : "circle")
            }
        }
    }
}

struct ToDo: Identifiable {
    var isDone = false
    var title: String
    let id = UUID()

    static var example: ToDo {
        ToDo(title: "Walk dog")
    }
}

#Preview {
    ToDos()
}
