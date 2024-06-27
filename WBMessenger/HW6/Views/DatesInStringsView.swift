//
//  DatesInStringsView.swift
//  WBMessenger
//
//  Created by Vladimir on 27.06.2024.
//

import SwiftUI

struct DatesInStringsView: View {
    @EnvironmentObject private var viewModel: CelendarViewModel
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            ForEach(viewModel.allCases, id: \.self) { string in
                Text("GGG")
            }
        }
    }
}

struct DatesInStringsView_Previews: PreviewProvider {
    static var previews: some View {
        DatesInStringsView()
    }
}
