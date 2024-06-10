//
//  ContactsRow.swift
//  WBMessenger
//
//  Created by Vladimir on 10.06.2024.
//

import SwiftUI

struct ContactsRow: View {
    var contact: Contacts
    
    var body: some View {
        HStack {
            ZStack {
                Image(contact.name)
                    .resizable()
                    .frame(width: 48, height: 48)
                ZStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.green)
                        
                }
                    
            }
            VStack {
                Text(contact.name)
                Text(getDate(with: contact.lastSeenOnline))
                    .opacity(contact.isOnline ? 1 : 1)
            }
        }
    }
    
    private func getDate(with date: Date?) -> String {
        guard let date = date else { return "" }
        var string = ""
        let dateMinute = Calendar.current.dateComponents([.minute], from: date, to: Date.now)
        let dateHour = Calendar.current.dateComponents([.hour], from: date, to: Date.now)
        
        if dateHour.hour ?? 0 >= 24 {
            string = "Last seen yesterday"
        } else if dateHour.hour ?? 0 <= 24 {
            let hours = dateHour.hour ?? 0
            string = "Last seen \(hours) hours ago"
        } else if dateHour.hour ?? 0 <= 1 {
            let minutes = dateMinute.minute ?? 0
            string = "Last seen \(minutes) minutes ago"
        }

        return string
    }
}

struct ContactsRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactsRow(contact: Contacts(name: "Петя", phoneNumber: "+7 999 999 99-99", lastSeenOnline: nil, isOnline: true, didStory: false))
    }
}
