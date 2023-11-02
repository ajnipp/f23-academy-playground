//
//  UserView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI
import Observation
struct UserView: View {
    private var user: UserClass = .example
    var body: some View {
        @Bindable var userobj = user
        VStack {
            UserCard(user: user)
            VStack {
                HStack {
                    Text("Name: ")
                    TextField("Edit name", text: $userobj.name)
                }
                .textFieldStyle(.roundedBorder)
                Stepper("Age: \(userobj.age)", value: $userobj.age)
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
