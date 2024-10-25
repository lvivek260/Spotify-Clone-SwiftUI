//
//  OnboardingFirstView .swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct OnboardingFirstView: View {
    private let viewModel: OnboardingFirstViewModelProtocol = OnboardingFirstViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack {
                backgroundImage
                
                VStack {
                    titleSpotifyIcon
                    
                    Spacer()
                    
                    bottomContentView
                }
            }
            .navigationBarHidden(true)
        }
       
    }
    
    private var backgroundImage: some View {
        Image(.onboardingFirst)
            .resizable()
            .ignoresSafeArea()
    }
    
    private var titleSpotifyIcon: some View {
        Image(.spotifyIcon)
            .resizable()
            .frame(width: 108, height: 33, alignment: .center)
    }
    
    private var bottomContentView: some View {
        VStack(spacing: 22) {
            Text(viewModel.title)
                .font(.system(size: 25, weight: .semibold))
                .foregroundStyle(.white)
            
            Text(viewModel.subTitle)
                .font(.system(size: 17, weight: .light))
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
            
            NavigationButton(title: "Continue",
                             destination: OnboardingSecondView())
        }
        .padding()
    }
}

struct OnboardingFirstView__Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFirstView()
    }
}
