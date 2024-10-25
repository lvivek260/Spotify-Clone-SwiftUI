//
//  OnboardingFirstViewModel.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import Foundation

protocol OnboardingFirstViewModelProtocol {
    var title: String { get }
    var subTitle: String { get }
}

final class OnboardingFirstViewModel: OnboardingFirstViewModelProtocol {
    let title: String = "Enjoy Listening To Music"
    let subTitle: String = "Sporty is a sports app for live scores, news, highlights, and real-time updates. Users can follow teams and get notifications."
    
}
