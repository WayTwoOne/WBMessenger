//
//  CelendarView.swift
//  WBMessenger
//
//  Created by Vladimir on 27.06.2024.
//

import SwiftUI

struct CelendarView: View {
    @EnvironmentObject private var viewModel: CelendarViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            DatePicker("Select a date", selection: $viewModel.dateVM, displayedComponents: [.date])
                .padding(.horizontal, 10)
            Picker("Country", selection: $viewModel.selectedCountry) {
                ForEach(viewModel.allCases) { category in
                    Text(category.rawValue).tag(category)
                }
            }
            
            List(viewModel.days, id: \.self) { day in
                Text(day)
                    .font(.system(size: 20))
                    .bold(viewModel.days[2] == day)
            }
            
            
        }
        .pickerStyle(.segmented)

        .onChange(of: viewModel.selectedCountry) { newValue in
            viewModel.dateTransformation(viewModel.dateVM, newValue)
        }
        .onChange(of: viewModel.dateVM) { newValue in
            viewModel.dateTransformation(newValue, viewModel.selectedCountry)
        }
    }
}

struct CelendarView_Previews: PreviewProvider {
    static var previews: some View {
        CelendarView()
    }
}
