//
//  UserCard.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct UserCard: View {
    @Bindable var user: UserClass
    var body: some View {
        VStack {
            Text(user.name)
            Text("\(user.age)")
        }
        .padding(10)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(.thinMaterial)
        }
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    UserCard(user: UserClass(name: "Alec", age: 23))
}
