//
//  TextView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/5/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image("shrek")
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
