//
//  ContentView.swift
//  PokeyDemo
//
//  Created by AlecNipp on 11/16/23.
//

import SwiftUI

struct PokeyView: View {
    let pokedex = PokedexService.shared
    var body: some View {
        NavigationStack {
            List {
                ForEach(pokedex.pokemon) { pokemon in
                    NavigationLink {
                        PokemonView(vm: PokemonViewModel(model: pokemon))
                    } label: {
                        Text(pokemon.name)
                    }
                }
            }
            .navigationTitle("Pokey")
        }
    }
}

#Preview {
    PokeyView()
}
