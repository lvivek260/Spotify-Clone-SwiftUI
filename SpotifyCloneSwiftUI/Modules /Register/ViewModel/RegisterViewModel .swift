//
//  RegisterViewModel .swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import Foundation

final class RegisterViewModel {
    let title = "Register"
    let needSupport = "If You Need Any Support"
    let needSupportLink: LinksModel = .init(text: "Click Here",
                                        url: URL(string: "https://www.youtube.com/")!)
    
    let notMember = "Not A Member ?"
    let notMemberLink = LinksModel(text: "Register Now",
                                   url: URL(string: "https://www.youtube.com/")!)
}
