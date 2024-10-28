//
//  UIApplication+Extension.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import SwiftUI

extension UIApplication {
    func changeRootViewController<Content: View>(to view: Content) {
        guard let window = connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow }) else {
            return
        }
        window.rootViewController = UIHostingController(rootView: view)
        window.makeKeyAndVisible()
    }
}
