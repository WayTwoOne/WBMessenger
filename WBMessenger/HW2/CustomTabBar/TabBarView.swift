//
//  TabBarView.swift
//  WBMessenger
//
//  Created by Vladimir on 10.06.2024.
//

import SwiftUI

struct TabBarIcons: Identifiable {
    var id = UUID()
    var iconName: String
}

let tabBar = [
    TabBarIcons(iconName: "person.2"),
    TabBarIcons(iconName: "message"),
    TabBarIcons(iconName: "more")
]

struct TabBarView: View {
    var body: some View {
        TabView {
            ContactsScreen()
                .tabItem {
                    Image("person.2")
                    
                        .renderingMode(.template)
                        .frame(width: 20, height: 0)
                }
            Text("message")
                .tabItem {
                    Image("message")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 40, height: 40)
                }
            Text("more")
                .tabItem {
                    Image("more")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 40, height: 40)
                }
        }
        .foregroundColor(.black)
        .onAppear {
            UITabBar.appearance().barTintColor = .black
        }
        .accentColor(Color(red: 154, green: 65, blue: 254))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
