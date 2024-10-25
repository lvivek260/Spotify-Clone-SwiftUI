//
//  SpotifyCloneSwiftUIApp.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

@main
struct SpotifyCloneSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MyTabBarView()
                .preferredColorScheme(.dark) // Forces dark mode
        }
    }
}
