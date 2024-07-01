//
//  Collection+.swift
//  WBMessenger
//
//  Created by Vladimir on 01.07.2024.
//

import Foundation

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
