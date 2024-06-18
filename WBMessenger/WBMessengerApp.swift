//
//  WBMessengerApp.swift
//  WBMessenger
//
//  Created by Vladimir on 04.06.2024.
//

import SwiftUI

@main
struct WBMessengerApp: App {
    let newContact = NewContactView()
    var body: some Scene {
        WindowGroup {
            ContentViewHW2()
                .preferredColorScheme(.light)
        }
    }
}
