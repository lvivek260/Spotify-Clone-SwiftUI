//
//  TitleView .swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct TitleView: View {
    @Environment(\.dismiss) var dismiss
    var backGroundColor: ColorConstants
    
    init(backGroundColor: ColorConstants = .tabBarBackground) {
        self.backGroundColor = backGroundColor
    }
    
    var body: some View {
        HStack {
            //Back Button
            Button(action: { dismiss() }) {
                ZStack {
                    Circle()
                        .foregroundStyle(Color(backGroundColor))
                    Image(systemName: "chevron.left")
                        .tint(.white)
                }
            }
            .frame(width: 25, height: 25, alignment: .leading)

            Spacer()
            
            //Spotify Icon Image
            Image(.spotifyIcon)
                .resizable()
                .frame(width: 108, height: 33, alignment: .center)
            
            Spacer()
            
            Text("")
                .frame(width: 25, height: 25, alignment: .leading)
        }
        .padding([.leading, .trailing], 30)
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
