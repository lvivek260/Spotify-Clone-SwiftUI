//
//  Image+Extension.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

extension Image {
    init(_ imageName: ImageConstants) {
        self.init(imageName.rawValue)
    }
}
