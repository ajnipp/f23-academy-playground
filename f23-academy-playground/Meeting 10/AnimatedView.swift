//
//  AnimatedView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/30/23.
//

import SwiftUI

struct AnimatedView: View {
    @State private var isToggled = false
    var body: some View {
        VStack {
            HStack {
                Text("Click here")
                Image(systemName: "chevron.right")
                    .rotationEffect(.degrees(isToggled ? 90 : 0))
            }
            if isToggled {
                Text("Hello, World!")
            }
        }
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.thinMaterial)
        )
        .onTapGesture {
            withAnimation(.easeInOut) {
                isToggled.toggle()
            }
        }
    }
}

#Preview {
    AnimatedView()
}
