//
//  ListView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Section("Numbers") {
                ForEach(1 ... 10, id: \.self) { num in
                    Text("Num: \(num)")
                }
            }
        }
    }
}

#Preview {
    ListView()
}
