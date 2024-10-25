//
//  NavigationButton.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct NavigationButton<Destination: View>: View {
    let title: String
    let destination: Destination
   
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 92)
                .background(Color(.accentColor))
                .cornerRadius(32)
        }
    }
}


