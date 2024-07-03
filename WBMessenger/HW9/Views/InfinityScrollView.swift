//
//  ScrollView.swift
//  WBMessenger
//
//  Created by Vladimir on 01.07.2024.
//

import SwiftUI

struct InfinityScrollView: View {
    @State var rows: [String] = Array(repeating: "Item", count: 20)
    
    private var columns: [GridItem] = [
            GridItem(.fixed(CGFloat.random(in: 45...130)), spacing: 16),
            GridItem(.fixed(CGFloat.random(in: 45...130)), spacing: 16),
            GridItem(.fixed(CGFloat.random(in: 45...130)), spacing: 16)
        ]
    
    func infinityScrollView(encounteredIndex: Int) {
        guard encounteredIndex == rows.count - 1 else { return }
        rows.append(contentsOf: Array(repeating: "", count: 20))
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 15) {
                Section(header: Text("Emojy").font(.title)) {
                    ForEach(0...rows.count, id: \.self) { index in
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                .foregroundColor(Color(.black))
                            Text(String(UnicodeScalar(Array(0x1F300...0x1F3F0).randomElement()!)!))
                                .font(.system(size: 45))
                                .onAppear {
                                    self.infinityScrollView(encounteredIndex: index)
                                }
                        }
                    }
                }
            }
        }
    }
}
