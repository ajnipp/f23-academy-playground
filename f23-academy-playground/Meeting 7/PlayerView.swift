//
//  PlayerView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/9/23.
//

import SwiftUI

struct PlayerView: View {
    @StateObject var vm = PlayerViewModel()
    var body: some View {
        VStack {
            HStack {
                Text("Playa")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding()
            Spacer()
            
            playerStuff
            
            Spacer()
            Button("Fetch Lebron") {
                Task {
                    await vm.fetchLebron()
                }
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 30)
        }
    }
    
    var playerStuff: some View {
        VStack {
            Text(vm.name)
                .font(.system(size: 40))
                .bold()
            Text(vm.stats)
        }
        .padding(20)
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    PlayerView()
}
