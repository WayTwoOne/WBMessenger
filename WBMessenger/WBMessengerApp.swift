//
//  WBMessengerApp.swift
//  WBMessenger
//
//  Created by Vladimir on 04.06.2024.
//

import SwiftUI

@main
struct WBMessengerApp: App {
    @StateObject var viewModel = EnteringTheReceivedCodeViewModel(numberOfFields: 4)
    var body: some Scene {
        WindowGroup {
            ContentViewHW11()
                .environmentObject(viewModel)
        }
    }
}
