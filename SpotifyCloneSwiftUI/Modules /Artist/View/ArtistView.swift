//
//  ArtistView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 24/10/24.
//

import SwiftUI

struct ArtistView: View {
    
    private let viewModel = ArtistProfileViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 26) {
                headerContentView
                albumGridView
                songGridView
            }
            .foregroundStyle(.white)
        }
        .background(Color(.customBackground))
    }
    
    private var headerContentView: some View {
        VStack(spacing: 12) {
            Image(viewModel.artistProfile.profileImg)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.width * 0.615)
            
            VStack(spacing: 10) {
                VStack(spacing: 6) {
                    Text(viewModel.artistProfile.name)
                        .font(.system(size: 20, weight: .bold))
                    Text(viewModel.artistProfile.aboutAlbum)
                        .font(.system(size: 13, weight: .regular))
                }
                Text(viewModel.artistProfile.discription)
                    .font(.system(size: 12, weight: .regular ))
                    .padding([.leading, .trailing], 50)
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    private var albumGridView: some View {
        VStack(spacing: 17) {
            Text("Albums")
                .font(.system(size: 16, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                    ForEach(viewModel.albumArray, id: \.self) { album in
                        AlbumGridCell(album: album)
                    }
                }
                .padding([.leading, .trailing], 30)
            }
            .frame(height: 171)
        }
    }
    
    private var songGridView: some View {
        VStack(spacing: 17) {
            Text("Songs")
                .font(.system(size: 16, weight: .bold))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading, 30)
            
            LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                ForEach(viewModel.songs, id: \.self) { song in
                    SongCell(song: song)
                }
            }
            .padding([.leading, .trailing], 30)
        }
    }
}

struct AlbumGridCell: View {
    let album: AlbumModel
    
    var body: some View {
        VStack(spacing: 17) {
            Image(album.image)
                .resizable()
                
            Text(album.title)
                .font(.system(size: 13, weight: .medium))
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct ArtistView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistView()
    }
}
