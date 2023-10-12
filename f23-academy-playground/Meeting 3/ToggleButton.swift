//
//  ToggleButton.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/12/23.
//

import SwiftUI

struct ToggleButton: View {
    @Binding var flag: Bool
    var body: some View {
        Button("Press") {
            flag.toggle()
        }
    }
}

#Preview {
    ToggleButton(flag: .constant(true))
}
