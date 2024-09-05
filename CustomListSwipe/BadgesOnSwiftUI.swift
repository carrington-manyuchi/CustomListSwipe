//
//  BadgesOnSwiftUI.swift
//  CustomListSwipe
//
//  Created by Manyuchi, Carrington C on 2024/09/05.
//

import SwiftUI

struct BadgesOnSwiftUI: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Love")
                }
                .badge("New")
            Color.green
                .tabItem {
                    Image(systemName: "gear.circle.fill")
                    Text("Settings")
                }
            
            Color.green
                .tabItem {
                    Image(systemName: "bookmark.square")
                    Text("Bookmark")
                }
                .badge(5)
        }
    }
}

#Preview {
    BadgesOnSwiftUI()
}
