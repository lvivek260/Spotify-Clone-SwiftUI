//
//  OnboardingSecondView .swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct OnboardingSecondView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            backgroundImage
            
            VStack {
                TitleView(backGroundColor: .tabBarBackground)
                
                Spacer()
                
                VStack(spacing: 38) {
                    VStack(spacing: 32) {
                        Text("Choose mode")
                            .font(.system(size: 25, weight: .semibold))
                            .foregroundStyle(.white)
                        
                        HStack(spacing: 55) {
                            buttonTitleWithImage(title: "Dark Mode", image: .darkMode) {
                                print(#function)
                            }
                            
                            buttonTitleWithImage(title: "Light Mode", image: .lightMode) {
                                print(#function)
                            }
                        }
                    }
                    NavigationButton(title: "Continue", destination: RegisterOrSignupView())
                    
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
    }
    
    private var backgroundImage: some View {
        Image(.onboardingSecond)
            .resizable()
            .ignoresSafeArea()
    }

}


fileprivate struct buttonTitleWithImage: View {
    let title: String
    let image: ImageConstants
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 20) {
                Image(image)
                    .resizable()
                    .frame(width: 73, height: 73)
                
                Text(title)
                    .font(.system(size: 17))
                    .foregroundStyle(.white)
            }
        }
    }
}

struct OnboardingSecondView__Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSecondView()
    }
}
