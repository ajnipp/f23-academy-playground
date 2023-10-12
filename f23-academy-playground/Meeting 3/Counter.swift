//
//  Counter.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/12/23.
//

import SwiftUI

struct Counter: View {
    @State private var count: Int = 0
    @State private var maxCount: Int = 10
    
    var percentage: Double {
        Double(count) / Double(maxCount)
    }
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Color.red
                .ignoresSafeArea()
                .opacity(percentage)
            VStack {
                HStack {
                   Text("Count: \(count)")
                        .font(.largeTitle)
                    Spacer()
                }
                Spacer()
                HStack {
                    Button {
                       count += 1
                    } label: {
                        Image(systemName: "plus")
                    }
                    Spacer()
                    Button {
                        count -= 1
                    } label: {
                        Image(systemName: "minus")
                    }
                }
                .buttonStyle(.plain)
                .font(.system(size:50))
                .padding(.horizontal, 30)
            }
            .padding()
        }
    }
}

#Preview {
    Counter()
}
