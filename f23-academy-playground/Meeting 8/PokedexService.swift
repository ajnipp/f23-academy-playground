//
//  PokedexService.swift
//  PokeyDemo
//
//  Created by AlecNipp on 11/16/23.
//

import Foundation

class PokedexService {
   
    static let shared = PokedexService()
    
    var pokedex: Pokedex
    
    init() {
        
        // Get the URL for our data from the Bundle API
        
        let url = Bundle.main.url(forResource: "pokedex-data", withExtension: "json")!
        
        // Get the data from the URL
        let data = try! Data(contentsOf: url)
        
        let decoder = JSONDecoder()
        
        // Decode the simple data into the structs that we expect
        pokedex = try! decoder.decode(Pokedex.self, from: data)
    }
    
    var pokemon: [Pokemon] {
        pokedex.pokemon
    }
    
    func getPokemonById(id: Int) -> Pokemon {
        return pokemon.first(where: { $0.id == id })!
    }
    
    
}
