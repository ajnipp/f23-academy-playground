//
//  BallDontLieService.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/9/23.
//

import Foundation

class BallDontLieService {
    static let baseURL = "https://www.balldontlie.io/api/v1/players/"

    static func fetchPlayer(playerID: Int) async throws -> Player {
        guard let url = URL(string: baseURL + "\(playerID)") else {
            throw NSError(domain: "Invalid URL", code: 0, userInfo: nil)
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let player = try decoder.decode(Player.self, from: data)
            print(player)
            return player
        } catch {
            throw error
        }
    }
}

struct Player: Codable {
    let id: Int
    let firstName, lastName, position: String
    let heightFeet, heightInches, weightPounds: Int
    let team: Team
    
    static var example: Player {
        return Player(id: 237, firstName: "LeBron", lastName: "James", position: "F", heightFeet: 6, heightInches: 9, weightPounds: 250, team: .example)
    }
}

struct Team: Codable {
    let id: Int
    let abbreviation, city, conference, division: String
    let fullName, name: String?
    
    static var example: Team {
        return Team(id: 1, abbreviation: "LAL", city: "Los Angeles", conference: "West", division: "Pacific", fullName: "Los Angeles Lakers", name: "Lakers")
    }
}
