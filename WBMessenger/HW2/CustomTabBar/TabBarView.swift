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
        VStack {
            HStack {
                ForEach(tabBar) { bar in
                    Button {
                        ()
                    } label: {
                        Image(bar.iconName)
                            .resizable()
                    }
                }
            }
            .frame(width: 120, height: 30)
            
            HStack {
                ForEach(tabBarTwo) { bar in
                    Button {
                        ()
                    } label: {
                        Image(systemName: bar.iconName)
                            .resizable()
                            .frame(width: 30, height: 20)
                           
                    }
                }
            }
            
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
