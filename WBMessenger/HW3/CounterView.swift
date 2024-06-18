//
//  ColorView.swift
//  WBMessenger
//
//  Created by Vladimir on 18.06.2024.
//

import SwiftUI
import WidgetKit

struct CounterView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text("Ведутся ремонтные работы, ожидайте результата в течении 1-2 дней")
            Text("Хорошего вам вечера!")
        }
        .font(.system(size: 50))
        .foregroundColor(.red)
        .bold()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
