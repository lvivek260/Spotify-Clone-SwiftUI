//
//  TabBarView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 23/10/24.
//

import SwiftUI

struct MyTabBarView: View {
    
    @State var selectedTab: Int = 0
    
    init() {
        // Customize the TabBar appearance
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor(named: ColorConstants.tabBarBackground.rawValue)
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(selectedTab == 0 ? .tabHomeSelected: .tabHomeNotSelected)
                }
                .tag(0)
                
            ProfileView()
                .tabItem {
                    Image(selectedTab == 1 ? .tabLikeSelected : .tabLikeNotSelected)
                }
                .tag(1)
        }
        .background(Color(.tabBarBackground))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabBarView()
    }
}
