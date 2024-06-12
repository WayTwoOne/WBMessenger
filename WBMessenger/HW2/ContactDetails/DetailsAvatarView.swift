//
//  DetailsAvatarView.swift
//  WBMessenger
//
//  Created by Vladimir on 12.06.2024.
//

import SwiftUI

struct DetailsAvatarView: View {
    let contact: Contacts
    var body: some View {
        switch contact.hasAvatar {
        case false:
            VStack {
                Image("person")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .frame(width: 112, height: 112)
                    .background {
                        Circle()
                            .frame(width: 200, height: 200)
                        //                .foregroundColor(Color(red: 247, green: 247, blue: 252))
                            .foregroundColor(.gray)
                    }
            }
        case true:
            VStack {
                Image(contact.name)
                    .resizable()
                    .frame(width: 112, height: 112)
                    .background {
                        Circle()
                            .frame(width: 200, height: 200)
                        //                .foregroundColor(Color(red: 247, green: 247, blue: 252))
                            .foregroundColor(.gray)
                    }
            }
        }
    }
}

struct DetailsAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsAvatarView(contact: Contacts(name: "Лиса Алиса", phoneNumber: "+7 999 999 99-99", lastSeenOnline: Date(timeIntervalSinceNow: -1800), isOnline: false, didStory: true, hasAvatar: false))
    }
}
