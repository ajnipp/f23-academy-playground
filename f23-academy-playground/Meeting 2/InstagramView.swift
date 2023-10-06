//
//  InstagramView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/5/23.
//

import SwiftUI

struct InstagramView: View {
    var body: some View {
        VStack {
            HStack {
                Image("shrek")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Text("shrek")
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("shrek")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 4)
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Button {
                        // nothing lol
                    } label: {
                        Image(systemName: "heart")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                    Button {
                        // nothing lol
                    } label: {
                        Image(systemName: "message")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                    Button {
                        // nothing lol
                    } label: {
                        Image(systemName: "paperplane")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                    Spacer()
                    Button {
                        // nothing lol
                    } label: {
                        Image(systemName: "bookmark")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
                Text("**shrek** ") + Text("Get out me swamp!")
            }
            .padding(.horizontal, 8)
        }
    }
}

struct InstagramView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramView()
    }
}
