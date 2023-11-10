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
    
    var name: String {
        guard let unwrapped = player else {
            return "No name"
        }
        
        return unwrapped.firstName + " " + unwrapped.lastName
    }
    
    var stats: String {
        guard let unwrapped = player else {
            return "No stats"
        }
        
        return "\(unwrapped.heightFeet ?? 0)' \(unwrapped.heightInches ?? 0)\""
        
    }
}
