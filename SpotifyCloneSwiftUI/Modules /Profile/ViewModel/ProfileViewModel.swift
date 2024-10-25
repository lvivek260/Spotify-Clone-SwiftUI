//
//  ProfileViewModel.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 24/10/24.
//

import Foundation

protocol ProfileViewModelProtocol {
    var playList: [PlayListModel] { get }
    var profile: ProfileModel { get }
}

final class ProfileViewModel: ProfileViewModelProtocol {
    
    let profile = ProfileModel(
        imageName: .profileimg,
        email: "Soroushnorozyui@gmail.com",
        userName: "Soroushnrz",
        following: "243",
        followers: "778"
    )

    let playList: [PlayListModel] = [
        PlayListModel(profileImg: .playList1,
                      title: "Blinding Lights",
                      artist: "The Weeknd",
                      duration: "3:20"),
        PlayListModel(profileImg: .playList2,
                      title: "Levitating",
                      artist: "Dua Lipa",
                      duration: "3:23"),
        PlayListModel(profileImg: .playList3,
                      title: "Watermelon Sugar",
                      artist: "Harry Styles",
                      duration: "2:54"),
        PlayListModel(profileImg: .playList4,
                      title: "Shape of You",
                      artist: "Ed Sheeran",
                      duration: "3:53"),
        PlayListModel(profileImg: .playList5,
                      title: "Stay",
                      artist: "The Kid LAROI, Justin Bieber",
                      duration: "2:21"),
        PlayListModel(profileImg: .playList6,
                      title: "Peaches",
                      artist: "Justin Bieber",
                      duration: "3:18")
    ]
}

