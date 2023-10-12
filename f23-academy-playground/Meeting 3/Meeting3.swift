//
//  Meeting3.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/12/23.
//

import SwiftUI

struct Meeting3: View {
    @State private var isRed = false
    var backgroundColor: Color {
        isRed ? Color.red : Color.white
    }
    var body: some View {
        ZStack {
            backgroundColor
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(.red)
                    .padding()
                .border(.green)
                Button {
                    isRed.toggle()
                    isRed.toggle()
                    isRed.toggle()
                    isRed.toggle()
                    isRed.toggle()

                } label: {
                    Image(systemName: "gear")
                }
                .buttonStyle(.plain)
                ToggleButton(flag: $isRed)
                ToggleButton(flag: $isRed)
            }
        }
    }
}

#Preview {
    Meeting3()
}
