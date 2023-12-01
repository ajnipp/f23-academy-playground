//
//  AnimatedView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/30/23.
//

import SwiftUI

struct AnimatedView: View {
    @State var showText = false
    var body: some View {
        VStack {
            HStack {
                Text("Click here")
                Image(systemName: "chevron.right")
                    .rotationEffect(.degrees( showText ? 90 : 0))
            }
            if showText {
                Text("Hi!")
            }
        }
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.gray)
        )
        .onTapGesture {
            withAnimation(.easeInOut) {
                showText.toggle()
            }
        }
    }
}

#Preview {
    AnimatedView()
}
