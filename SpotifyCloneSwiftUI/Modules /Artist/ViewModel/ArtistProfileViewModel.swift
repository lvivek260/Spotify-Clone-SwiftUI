//
//  ArtistProfileViewModel.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 24/10/24.
//

import Foundation

final class ArtistProfileViewModel {
    let artistProfile = ArtistProfileModel(
        profileImg: .artistProfileTemp,
        name: "Billie Eilish",
        aboutAlbum: "2 Album , 67 Track",
        discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae"
    )
    
    let songs: [Song] = [
        Song(title: "Shape of You", artist: "Ed Sheeran", duration: "3:53"),
        Song(title: "Blinding Lights", artist: "The Weeknd", duration: "3:20"),
        Song(title: "Levitating", artist: "Dua Lipa", duration: "3:23"),
        Song(title: "Uptown Funk", artist: "Mark Ronson ft. Bruno Mars", duration: "4:29"),
        Song(title: "Senorita", artist: "Shawn Mendes & Camila Cabello", duration: "3:11"),
        Song(title: "Bad Guy", artist: "Billie Eilish", duration: "3:14"),
        Song(title: "Someone Like You", artist: "Adele", duration: "4:45"),
        Song(title: "Happier", artist: "Marshmello ft. Bastille", duration: "3:34"),
        Song(title: "Rolling in the Deep", artist: "Adele", duration: "3:48"),
        Song(title: "Old Town Road", artist: "Lil Nas X", duration: "2:37")
    ]
    
    let albumArray: [AlbumModel] = [
        AlbumModel(image: .album1, title: "Lost in the Echo"),
        AlbumModel(image: .album2, title: "Midnight City"),
        AlbumModel(image: .album3, title: "Electric Feel"),
        AlbumModel(image: .album1, title: "Blinding Lights"),
        AlbumModel(image: .album2, title: "Dreams"),
        AlbumModel(image: .album3, title: "Hotel California"),
        AlbumModel(image: .album1, title: "Sunflower"),
        AlbumModel(image: .album2, title: "Shape of You"),
        AlbumModel(image: .album3, title: "Stairway to Heaven"),
        AlbumModel(image: .album1, title: "Rolling in the Deep")
    ]

}
