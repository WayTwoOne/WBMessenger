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

struct ContactsScreen: View {
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.name) { contact in
                ContactsRow(contact: contact)
                    .padding(.leading, -20)
                    .background {
                        NavigationLink {
                            DetailsScreen(contact: contact)
                        } label: {
                            Text("")
                        }
                    }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Контакты")
                        .font(.system(size: 20))
                        .bold()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Text("+")
                            .foregroundColor(.black)
                            .font(.system(size: 24))
                            .bold()
                    }
                }
            })
        }
        
        .searchable(text: $searchText)
    }
    
}


struct ContactsVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen()
    }
}
