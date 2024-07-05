//
//  ContentViewHW11.swift
//  WBMessenger
//
//  Created by Vladimir on 05.07.2024.
//

import SwiftUI

struct ContentViewHW11: View {
    @StateObject var router = RouterHW11()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            router.getPage(.welcomeScreen)
                .navigationDestination(for: MyPageHW11.self) { page in
                    router.getPage(page)
                }
        }
        .environmentObject(router)
    }
}

struct ContentViewHW11_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHW11()
    }
}
