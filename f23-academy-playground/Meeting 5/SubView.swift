//
//  SubView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import SwiftUI

struct SubView: View {
    let num: Int
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("SubView \(num)")
            NavigationLink {
               SubView(num: num + 1)
            } label: {
                Text("Hi")
            }
            NavigationLink {
                NavigationRoot()
            } label: {
                Text("Go Home")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SubView(num: 0)
    }
}
