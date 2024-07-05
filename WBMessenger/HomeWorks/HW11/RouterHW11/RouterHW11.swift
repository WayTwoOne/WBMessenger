//
//  RouterHW11.swift
//  WBMessenger
//
//  Created by Vladimir on 05.07.2024.
//

import Foundation

import SwiftUI

final class RouterHW11: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var homeScreen: MyPageHW11 = .welcomeScreen
    
    func push(_ page: MyPageHW11) {
        path.append(page)
    }
    
    func goBack() {
        path.removeLast()
    }
    
    func goToFirst() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func getPage(_ page: MyPageHW11) -> some View {
        switch page {
        case .welcomeScreen:
            WalkthroughView()
        case .verificationWithPhone:
            VerificationScreenWitoutAnimation()
        case .verificationWithCode:
            EnteringCodeTextView()
        }
    }
}

enum MyPageHW11: Hashable {
    case welcomeScreen, verificationWithPhone, verificationWithCode
}
