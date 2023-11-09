//
//  PlayerViewModel.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/9/23.
//

import Foundation

class PlayerViewModel: ObservableObject {
    @Published var player: Player?

    func fetchLebron() async {
        do {
            player = try await BallDontLieService.fetchPlayer(playerID: 237)
        } catch {
            print(error)
            player = nil
        }
    }
}
