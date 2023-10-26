//
//  GeneratedView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import SwiftUI

struct GeneratedView: View {
    @State private var textValue = ""
    @State private var roster: [RosterItem] = []
    var body: some View {
        VStack {
            ForEach(roster) { item in
                Text(item.name)
            }
            TextField("Name", text: $textValue)
                .textFieldStyle(.roundedBorder)
                .padding(10)
            Button("Add") {
                roster.append(RosterItem(name: textValue))
            }
        }
    }
}

#Preview {
    GeneratedView()
}
