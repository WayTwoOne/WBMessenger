//
//  ContentViewHW2.swift
//  WBMessenger
//
//  Created by Vladimir on 13.06.2024.
//

import SwiftUI

//struct ContentViewHW2: View {
//    @State private var tabSelected = 1
//    @State private var searchText = ""
//    var body: some View {
//        NavigationStack{
//            ContactsScreen()
//            CustomTabBarView(tabSelcted: $tabSelected)
//
//        }
//        .searchable(text: $searchText)
//    }
//}

struct ContentViewHW2: View {
    @State private var tabSelected = 1
    @State private var searchText = ""
    @StateObject var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            router.getPage(.contactsList)
                .navigationDestination(for: MyPage.self) { page in
                    router.getPage(page)
                }
        }
        .overlay(alignment: .bottom) {
            CustomTabBarView(tabSelcted: $tabSelected)
        }
        .environmentObject(router)
        .searchable(text: $searchText)
    }
}



struct ContentViewHW2_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHW2()
    }
}
