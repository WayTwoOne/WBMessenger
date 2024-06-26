//
//  StartedWorkView.swift
//  WBMessenger
//
//  Created by Vladimir on 26.06.2024.
//

import SwiftUI

struct StartedWorkView: View {
    @State var person: Person? = .init(name: "", lastname: "", patronymic: "", age: 0, passport: nil)
    @State var passport: Passport? = .init(series: 0, number: 0, date: Date.now, person: nil)
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Button {
                person?.passport = passport
                passport?.person = person
            } label: {
                Text("Add passport and person ")
            }
            .padding(.vertical, 50)
            
            Button(action: {
                deInit()
                dismiss()
            }, label: {
                Text("Button to dismiss")
            })
        }
        .onDisappear {
            deInit()
        }
    }
    
    private func deInit() {
        person = nil
        passport = nil
    }
}
