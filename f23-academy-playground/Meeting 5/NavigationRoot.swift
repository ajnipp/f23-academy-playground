//
//  NavigationRoot.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import SwiftUI

struct NavigationRoot: View {
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Root View")
            NavigationLink {
               SubView(num: 0)
            } label: {
                Text("Press")
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    NavigationRoot()
}
