//
//  NestedViews.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/5/23.
//

import SwiftUI

struct NestedViews: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) +
                Text("Cheese")
                    .bold()
                    .font(.largeTitle)
                Image(systemName: "paperplane")
                    .bold()
                    .font(.largeTitle)
                Image("shrek")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .cornerRadius(.infinity)
            }
        }
    }
}

struct NestedViews_Previews: PreviewProvider {
    static var previews: some View {
        NestedViews()
    }
}
