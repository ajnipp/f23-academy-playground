//
//  PokemonView.swift
//  PokeyDemo
//
//  Created by AlecNipp on 11/16/23.
//

import SwiftUI

struct PokemonView: View {
    @StateObject var vm: PokemonViewModel
    var body: some View {
        VStack {
            AsyncImage(url: vm.model.imageURL) { image in image
                .resizable()
                .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200)
            HStack {
                Text(vm.model.name + " #" + vm.model.num)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }
            Text(vm.model.height)
            Text(vm.model.weight)
            Text(vm.typeString)
            
            HStack {
                Button("Next") {
                    vm.setNextPokemon()
                }
            }
        }
    }
}

#Preview {
    PokemonView(vm: PokemonViewModel(model: .example))
}
