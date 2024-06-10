//
//  ContactsModel.swift
//  WBMessenger
//
//  Created by Vladimir on 10.06.2024.
//

import Foundation

struct Contacts {
    var name: String
    var phoneNumber: String
    var lastSeenOnline: Date?
    var isOnline: Bool
    var didStory: Bool
    var avatar: String?
}
