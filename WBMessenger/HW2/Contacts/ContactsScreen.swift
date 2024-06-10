//
//  ContactsVIew.swift
//  WBMessenger
//
//  Created by Vladimir on 10.06.2024.
//

import SwiftUI

let contacts: [Contacts] = [
    Contacts(name: "Анастасия Иванова", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -80400), isOnline: false, didStory: false),
    Contacts(name: "Петя", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false),
    Contacts(name: "Маман", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -10800), isOnline: false, didStory: true),
    Contacts(name: "Арбуз Дыня", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false),
    Contacts(name: "Иван Иванов", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false),
    Contacts(name: "Лиса Алиса", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -1800), isOnline: false, didStory: true),
]

struct ContactsVIew: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContactsVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContactsVIew()
    }
}
