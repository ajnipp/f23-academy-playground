//
//  PokemonViewModel.swift
//  PokeyDemo
//
//  Created by AlecNipp on 11/16/23.
//

import Foundation

class PokemonViewModel: ObservableObject {
    @Published var model: Pokemon
    
    init(model: Pokemon) {
        self.model = model
    }
    
    var name: String {
        model.name
    }
    
    var num: String {
        model.num
    }
    
    var typeString: String {
        model.type.map { $0.rawValue }.joined(separator: ", ")
    }
    
    var currentId: Int {
        model.id
    }
    
    func setNextPokemon() {
        model = PokedexService.shared.getPokemonById(id: currentId + 1)
    }
}
