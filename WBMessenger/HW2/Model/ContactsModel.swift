//
//  ContactsModel.swift
//  WBMessenger
//
//  Created by Vladimir on 10.06.2024.
//

import Foundation

struct Contacts: Hashable {
    var id = UUID()
    var name: String = ""
    var phoneNumber: String = ""
    var lastSeenOnline: Date? = nil
    var isOnline: Bool = false
    var didStory: Bool = false
    var hasAvatar: Bool = false
    var avatar: String? = nil
}
