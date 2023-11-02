//
//  UserView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct UserView: View {
    @State private var user: UserStruct = .example
    var body: some View {
        VStack {
            UserCard(user: user)
            VStack {
                HStack {
                    Text("Name: ")
                    TextField("Edit name", text: $user.name)
                }
                .textFieldStyle(.roundedBorder)
                Stepper("Age: \(user.age)", value: $user.age)
                Button("Print!") {
                    print(user.age)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    UserView()
}
