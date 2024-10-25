//
//  SigninView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct SigninView: View {
    
    private let viewModel = SignInViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                TitleView()
                
                Spacer()
                
                VStack(spacing: 38) {
                    VStack(spacing: 21) {
                        Text(viewModel.title)
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundStyle(.white)
                        
                        HStack {
                            Text(viewModel.needSupport)
                                .foregroundStyle(.white)
                            Link(viewModel.needSupportLink.text,
                                 destination: viewModel.needSupportLink.url)
                                .foregroundStyle(Color(.accentColor))
                        }
                        .font(.system(size: 17))
                    }
                    
                    textFieldsView
                    
                    CustomButton(title: "Register") {
                        UIApplication.shared.changeRootViewController(to: MyTabBarView())
                    }
                    .frame(height: 80)
                    
                    bottomContentView
                }
                .padding()
                
                Spacer()
            }
        }
        .background(Color(.customBackground))
        .navigationBarHidden(true)
    }
    
    var devider: some View {
        VStack {
            Divider()
                .frame(height: 1)
                .background(Color(.gray))
        }
    }
    
    var textFieldsView: some View {
        VStack(spacing: 20) {
            CustomTextFieldView(text: "", placeHolder: "Enter username or email")
                .frame(height: 80)
            
            CustomTextFieldView(text: "", placeHolder: "Password")
                .frame(height: 80)
            
            Text("Recovery Password")
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
        }
    }
    
    var bottomContentView: some View {
        VStack(spacing: 50) {
            //Devider View
            HStack {
                devider
                Text("OR")
                    .foregroundStyle(.white)
                devider
            }
            
            HStack(spacing: 50) {
                Image(.google)
                    .resizable()
                    .frame(width: 28, height: 28)
                Image(systemName: "apple.logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.white)
            }
            
            HStack {
                Text(viewModel.notMember)
                    .foregroundStyle(.white)
                Link(viewModel.notMemberLink.text,
                     destination: viewModel.notMemberLink.url)
                    .foregroundStyle(.blue)
            }
            .font(.system(size: 17))
           
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
