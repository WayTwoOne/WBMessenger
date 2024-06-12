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

let tabBarTwo = [
    TabBarIcons(iconName: "person.2"),
    TabBarIcons(iconName: "message"),
    TabBarIcons(iconName: "ellipsis")
]

struct TabBarView: View {
    var body: some View {
        TabView {
            ContactsScreen()
                .tabItem {
                    Image("person.2")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 10, height: 30)
                }
            Text("Message")
                .tabItem {
                    Image("message")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 10, height: 30)
                }
            Text("ellipsis")
                .tabItem {
                    Image("ellipsis")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 10, height: 30)
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
