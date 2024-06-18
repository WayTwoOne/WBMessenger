//
//  Router.swift
//  WBMessenger
//
//  Created by Vladimir on 18.06.2024.
//

import SwiftUI

final class Router: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(_ page: MyPage) {
        path.append(page)
    }
    
    func goBack() {
        path.removeLast()
    }
    
    func goToFirst() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func getPage(_ page: MyPage) -> some View {
        switch page {
        case .contactsList:
            ContactsScreen()
        case .contactsDetails(let contact):
            DetailsScreen(contact: contact)
        case .addNewContact:
            NewContactView()
        }
    }
}

enum MyPage: Hashable {
    case contactsList, contactsDetails(Contacts), addNewContact
}

//enum MyPage: String, CaseIterable, Identifiable {
//    case home, currentVacansy, vacancy
//
//    var id: String { self.rawValue }
//}
