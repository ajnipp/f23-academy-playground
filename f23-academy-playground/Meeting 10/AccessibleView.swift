//
//  AccessibleView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/30/23.
//

import SwiftUI

struct AccessibleView: View {
    @State private var fontSize = 10.0
    var body: some View {
        VStack {
            Text("Hello, world!")
                .foregroundColor(.blue)
                .font(.largeTitle)

            Image("a-icon")
                .resizable()
                .frame(width: 100, height: 100)
                .accessibilityLabel("Star picture")

            Button {
                fontSize += 20
            } label: {
                Text("Click here")
            }
            .padding()

            VStack {
                Text("Hello again")
                    .font(.system(size: fontSize))
            }
            .frame(width: 100, height: 50)
        }
    }
}

#Preview {
    AccessibleView()
}
