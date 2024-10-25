//
//  HomeView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    //All Header View
                    ZStack {
                        VStack(spacing: 12) {
                            headerBarView
                            headerCardView
                        }
                        
                        Image(.billieEilish)
                            .resizable(resizingMode: .tile)
                            .scaledToFit()
                    }
                    .padding([.leading, .trailing, .bottom], 28)
                    
                    contentTitleGridView
                        .padding(.bottom, 12)
                    
                    contentGridView
                        .padding(.bottom, 37)
                    
                    bottomPlayListView
                    
                    Spacer()
                }
            }
            .background(Color(.customBackground))
        }
    }
    
    var headerBarView: some View {
        HStack {
            Image(.search)
                .resizable()
                .frame(width: 25, height: 25)
            
            Spacer()
            
            Image(.spotifyIcon)
                .resizable()
                .frame(width: 108, height: 33)
            
            Spacer()
            
            Image(.menu)
                .resizable()
                .frame(width: 25, height: 25)
        }
    }
    
    var headerCardView: some View {
        ZStack {
            Image(.homeCardBackground)
                .resizable()
                .frame(height: 133)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("New album")
                    .font(.system(size: 10, weight: .semibold))
                Text("Happier Than")
                    .font(.system(size: 20, weight: .semibold))
                Text("Ever")
                    .font(.system(size: 20, weight: .semibold))
                Text("Billie Eilish")
                    .font(.system(size: 13, weight: .semibold))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.white)
            .padding([.top, .bottom, .leading], 20)
        }
    }
    
    private var contentTitleGridView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
                ForEach(viewModel.titles, id: \.self) { title in
                    TitleCell(title: title, isSelectcd: Binding(
                        get: { viewModel.selectedTitle == title },
                        set: { isSelected in
                            if isSelected {
                                viewModel.selectedTitle = title
                            }
                        })
                    )
                }
            }
            .padding([.leading, .trailing], 28)
        }
        .frame(height: 30)
    }
    
    private var contentGridView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
                ForEach(viewModel.musicData, id: \.self) { music in
                    NavigationLink(destination: ArtistView()) {
                        contentGridCell(music: music)
                    }
                }
            }
            .padding([.leading, .trailing], 28)
        }
        .frame(height: 242)
    }
    
    private var bottomPlayListView: some View {
        VStack(spacing: 17) {
            HStack {
                Text("Playlist")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Text("See more")
            }
            .foregroundStyle(.white)
            
            LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                ForEach(viewModel.songs, id: \.self) { song in
                    SongCell(song: song)
                }
            }
        }
        .padding([.leading, .trailing], 28)
    }
}


// MARK: - Cells 
struct TitleCell: View  {
    var title: String = ""
    @Binding var isSelectcd: Bool
    
    var body: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.system(size: isSelectcd ? 20 : 18, weight: isSelectcd ? .bold : .semibold))
                .foregroundColor(isSelectcd ? .white : Color(.customGray))
            
            Rectangle()
                .cornerRadius(.infinity)
                .frame(height: 2)
                .foregroundColor(isSelectcd ? Color(.accentColor) : Color.clear)
        }
        .onTapGesture {
            isSelectcd = true
        }

    }
}

struct contentGridCell: View {
    let music: MusicModel
    
    var body: some View {
        VStack(spacing: 13) {
            ZStack {
                Image(music.image)
                    .resizable()
                    .frame(width: 147)
                    .padding(.bottom, 10)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image(.musicIcon)
                            .resizable()
                            .frame(width: 29, height: 29)
                            .padding(.trailing, 10)
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 3) {
                Text(music.artistName)
                    .font(.system(size: 16, weight: .semibold))
                Text(music.songName)
                    .font(.system(size: 14))
            }
            .padding(.leading, 8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.white)
        }

    }
}

struct SongCell: View {
    let song: Song
    
    var body: some View {
        HStack {
            HStack(spacing: 23) {
                Image(.musicIcon)
                    .resizable()
                    .frame(width: 37, height: 37)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(song.title)
                    Text(song.artist)
                }
                .foregroundStyle(.white)
            }
            
            Spacer()
            
            HStack(spacing: 50) {
                Text(song.duration)
                    .foregroundStyle(.white)
                
                Image(.tabLikeSelected)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color(.gray))
            }
        }
        .scaledToFill()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

