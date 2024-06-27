//
//  CelendarViewModel.swift
//  WBMessenger
//
//  Created by Vladimir on 27.06.2024.
//

import Foundation

final class CelendarViewModel: ObservableObject {
    @Published var selectedCountry: Countries = .russia
    @Published var days: [String] = []
    @Published var dateVM = Date()
    let allCases = Countries.allCases
    let daysString = ["Day before yesturday", "Yesterday", "Today", "Tomorrow", "After tomorrow"]
    
    init() {
        dateTransformation(dateVM, selectedCountry)
    }
    
    
    enum Countries: String, CaseIterable, Identifiable {
        case american = "🇺🇸"
        case german = "🇩🇪"
        case africa = "🇦🇫"
        case england = "🇬🇧"
        case russia = "🇷🇺"
        var id: Countries { self }
    }
    
    func dateTransformation(_ date: Date, _ region: Countries) {
        days = []
        var daysArray: [Date] = []
        let calendar = Calendar.current
        
        for i in 0..<5 {
            let j = i - 2
            daysArray.append(calendar.date(byAdding: .day, value: j, to: date) ?? date)
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        switch region {
        case .american:
            dateFormatter.locale = Locale(identifier: "us_US")
        case .german:
            dateFormatter.locale = Locale(identifier: "de_AT")
        case .africa:
            dateFormatter.locale = Locale(identifier: "af_ZA")
        case .england:
            dateFormatter.locale = Locale(identifier: "en_ER")
        case .russia:
            dateFormatter.locale = Locale(identifier: "ru_RU")
        }
        
        daysArray.forEach { day in
            let dateString = dateFormatter.string(from: day)
            days.append(dateString)
        }
    }
}


extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium

        let dateString = dateFormatter.string(from: value)
        appendLiteral(dateString)
    }
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Int) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut

        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
}
