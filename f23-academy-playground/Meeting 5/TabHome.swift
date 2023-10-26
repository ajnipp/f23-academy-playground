//
//  TabHome.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import SwiftUI

struct TabHome: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TabHome()
}
