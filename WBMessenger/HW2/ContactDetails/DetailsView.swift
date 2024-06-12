//
//  DetailsView.swift
//  WBMessenger
//
//  Created by Vladimir on 12.06.2024.
//

import SwiftUI

struct DetailsView: View {
    let contact: Contacts
    var body: some View {
        VStack {
                Text(contact.name)
                .font(.system(size: 24))
                .foregroundColor(.black)
                Text(contact.phoneNumber)
                .font(.system(size: 16))
                .foregroundColor(Color(red: 173, green: 181, blue: 189))
                
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Contacts(name: "Лиса Алиса", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -1800), isOnline: false, didStory: true, hasAvatar: false))
    }
}
