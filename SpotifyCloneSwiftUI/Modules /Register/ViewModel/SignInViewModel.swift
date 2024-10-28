//
//  SignInViewModel.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import Foundation

final class SignInViewModel: ObservableObject {
// MARK: - Publishers
    @Published var txtUserNameEmail: String = ""
    @Published var password: String = ""
    @Published var isPresentedAlert: Bool = false
    @Published var alertMessage: String = ""
    
// MARK: - Other Variables
    let title = "Sign in"
    let needSupport = "If You Need Any Support"
    let needSupportLink: LinksModel = .init(text: "Click Here",
                                        url: URL(string: "https://www.youtube.com/")!)
    
    let notMember = "Not A Member ?"
    let notMemberLink = LinksModel(text: "Register Now",
                                   url: URL(string: "https://www.youtube.com/")!)
    
    func validation() -> Bool {
        if txtUserNameEmail.isEmpty {
            alertMessage = "Please enter email or username"
            isPresentedAlert = true
            return false
        } else if password.isEmpty {
            alertMessage = "Please enter password"
            isPresentedAlert = true
            return false
        } else {
            alertMessage = ""
            isPresentedAlert = false
            return true
        }
    }
}
