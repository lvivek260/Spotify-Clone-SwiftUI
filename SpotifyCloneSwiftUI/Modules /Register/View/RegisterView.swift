//
//  RegisterView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct RegisterView: View {
    
    @ObservedObject var viewModel = RegisterViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                TitleView()
                
                ScrollView {
                    Spacer()
                    
                    VStack(spacing: 38) {
                        titleSubTitle
                        
                        textFields
                        
                        CustomButton(title: "Create Account") {
                            if viewModel.validation() {
                                UIApplication.shared.changeRootViewController(to: MyTabBarView())
                            }
                        }
                        .frame(height: 80)
                        
                        bottomContentView
                    }
                    .padding()
                    
                    Spacer()
                }
            }
        }
        .alert("Validation Error", isPresented: $viewModel.isShowAlert, actions: {}){
            Text(viewModel.alertMessage)
        }
        .background(Color(.customBackground))
        .navigationBarHidden(true)
    }
    
    private var titleSubTitle: some View {
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
    }
    
    private var textFields: some View {
        VStack(spacing: 16) {
            CustomTextFieldView(text: $viewModel.txtFullName, placeHolder: "Full Name")
                .frame(height: 80)
                .keyboardType(.default)
            
            CustomTextFieldView(text: $viewModel.txtEmail, placeHolder: "Enter Email")
                .frame(height: 80)
                .keyboardType(.emailAddress)
            
            CustomTextFieldView(text: $viewModel.txtPassword, placeHolder: "Password")
                .frame(height: 80)
                .keyboardType(.default)
        }
    }
    
    private var bottomContentView: some View {
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
    
    private var devider: some View {
        VStack {
            Divider()
                .frame(height: 1)
                .background(Color(.gray))
        }
    }

}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
