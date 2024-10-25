//
//  RegisterOrSignupView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct RegisterOrSignupView: View {
    
    @Environment(\.dismiss) var dismiss
    private let viewModel = RegisterOrSignupViewModel()
    
    var body: some View {
        ZStack {
            backgroundImage
            
            VStack {
                backButtonView
                
                Spacer()
                
                VStack(spacing: 30) {
                    Image(.spotifyIcon)
                        .resizable()
                        .frame(width: 235, height: 71, alignment: .center)
                    
                    VStack(spacing: 20) {
                        Text(viewModel.title)
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundStyle(.white)
                        
                        Text(viewModel.subTitle)
                            .font(.system(size: 17))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack(spacing: 20) {
                        NavigationButton(title: "Register", destination: RegisterView())
                            .cornerRadius(.infinity)
                            .frame(maxWidth: .infinity)
                        
                        NavigationLink(destination: SigninView()) {
                            Text("Sign in")
                                .font(.system(size: 22, weight: .semibold))
                                .foregroundStyle(.white)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .frame(height: 73)
                    
                }
                .padding()
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
    
    private var backgroundImage: some View {
        Image(.registerOrSignup)
            .resizable()
            .ignoresSafeArea()
    }
    
    private var backButtonView: some View {
        HStack {
            //Back Button
            Button(action: { dismiss() }) {
                ZStack {
                    Circle()
                        .foregroundStyle(Color(.tabBarBackground))
                    Image(systemName: "chevron.left")
                        .tint(.white)
                }
            }
            .frame(width: 25, height: 25, alignment: .leading)

            Spacer()
        }
        .padding([.leading, .trailing], 30)
    }
}

struct RegisterOrSignupView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterOrSignupView()
    }
}
