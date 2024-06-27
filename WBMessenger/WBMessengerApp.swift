//
//  WBMessengerApp.swift
//  WBMessenger
//
//  Created by Vladimir on 04.06.2024.
//

import SwiftUI

@main
struct WBMessengerApp: App {
    @StateObject private var viewModel = CelendarViewModel()
    var body: some Scene {
        WindowGroup {
            CelendarView()
                .environmentObject(viewModel)
        }
    }
}
