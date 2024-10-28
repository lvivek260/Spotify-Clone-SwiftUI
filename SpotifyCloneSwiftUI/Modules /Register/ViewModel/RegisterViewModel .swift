//
//  RegisterViewModel .swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import Foundation

final class RegisterViewModel: ObservableObject {
    
// MARK: - Published
    @Published var txtFullName: String = ""
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowAlert: Bool = false
    var alertMessage: String = ""
    
// MARK: - Other Variables
    let title = "Register"
    let needSupport = "If You Need Any Support"
    let needSupportLink: LinksModel = .init(text: "Click Here",
                                        url: URL(string: "https://www.youtube.com/")!)
    let notMember = "Not A Member ?"
    let notMemberLink = LinksModel(text: "Register Now",
                                   url: URL(string: "https://www.youtube.com/")!)
    
// MARK: - Methods
    func validation() -> Bool {
        if txtFullName.isEmpty {
            alertMessage = "Please enter full name"
        } else if txtEmail.isEmpty {
            alertMessage = "Please enter email id"
        } else if txtPassword.isEmpty {
            alertMessage = "Pllease enter password"
        } else {
            isShowAlert = false
            return true
        }
        isShowAlert = true
        return false
    }
}
