//
//  ContactsVIew.swift
//  WBMessenger
//
//  Created by Vladimir on 10.06.2024.
//

import SwiftUI

let contacts: [Contacts] = [
    Contacts(name: "Анастасия Иванова", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -80400), isOnline: false, didStory: false, hasAvatar: true),
    Contacts(name: "Петя", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false, hasAvatar: true),
    Contacts(name: "Маман", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -10800), isOnline: false, didStory: true, hasAvatar: true),
    Contacts(name: "Арбуз Дыня", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false, hasAvatar: true),
    Contacts(name: "Иван Иванов", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false, hasAvatar: false),
    Contacts(name: "Лиса Алиса", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -1800), isOnline: false, didStory: true, hasAvatar: false),
]

struct ContactsVIew: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.name) { contact in
                ContactsRow(contact: contact)
                
            }
        }
        .navigationTitle("Контакты")
        .searchable(text: $searchText)
        
    }
}

struct ContactsVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContactsVIew()
    }
}
