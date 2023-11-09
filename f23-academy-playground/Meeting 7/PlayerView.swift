//
//  PlayerView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/9/23.
//

import SwiftUI

struct PlayerView: View {
    var player: Player = .example
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
            VStack {
                Text("\(player.firstName) \(player.lastName)")
                    .font(.system(size: 40))
                    .bold()
                Text("\(player.heightFeet) feet \(player.heightInches) inches")
            }
            .padding(20)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            Spacer()
            Button("Fetch Lebron") {
                Task {
                    do {
                        try await BallDontLieService.fetchPlayer(playerID: 237)
                    } catch {
                        print("error")
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    PlayerView()
}
