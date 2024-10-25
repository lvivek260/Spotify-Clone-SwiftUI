//
//  ProfileView .swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import SwiftUI

struct ProfileView: View {
    
    private var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    headerProfileView
                    
                    VStack(spacing: 20) {
                        Text("PUBLIC PLAYLIST")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 20))
                        publicPlayListGridView
                    }
                    .padding([.leading, .trailing], 28)
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
            }
            .background(Color(.customBackground))
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private var headerProfileView: some View {
        VStack(spacing: 10) {
            Image(.profileimg)
                .resizable()
                .frame(width: 93, height: 93)
            
            Text(viewModel.profile.email)
                .font(.system(size: 12))
            
            Text(viewModel.profile.userName)
                .font(.system(size: 20, weight: .bold))
            
            HStack(spacing: 100) {
                VStack(spacing: 2) {
                    Text("Followers")
                        .font(.system(size: 20, weight: .semibold))
                    Text(viewModel.profile.followers)
                        .font(.system(size: 14))
                }
                
                VStack(spacing: 2) {
                    Text("Following")
                        .font(.system(size: 20, weight: .semibold))
                    Text(viewModel.profile.following)
                        .font(.system(size: 14))
                }
            }
        }
        .foregroundStyle(.white)
        .padding(.all, 20)
        .frame(maxWidth: .infinity)
        .background {
            BottomRoundedCorners(radius: 50)
                .foregroundStyle(Color(.tabBarBackground))
        }
    }
    
    private var publicPlayListGridView: some View {
        LazyVGrid(columns: [GridItem(.flexible())]) {
            ForEach(viewModel.playList, id: \.self) { playListData in
                PublicPlaylistCell(playListData: playListData)
            }
        }
    }
}

struct PublicPlaylistCell: View {
    var playListData: PlayListModel
    
    var body: some View {
        HStack {
            HStack(spacing: 20) {
                Image(playListData.profileImg)
                    .resizable()
                    .frame(width: 56, height: 56)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(playListData.title)
                        .font(.system(size: 16, weight: .bold))
                    Text(playListData.artist)
                        .font(.system(size: 12, weight: .regular))
                }
            }
            
            Spacer()
            
            HStack(spacing: 36) {
                Text(playListData.duration)
                    .font(.system(size: 15))
                
                Image(.menu)
            }
        }
    }
}

struct ProfileView__Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
