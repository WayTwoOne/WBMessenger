//
//  EnteringCodeTextView.swift
//  Profile
//
//  Created by Vladimir on 05.07.2024.
//

import SwiftUI

struct EnteringCodeTextView: View {
    @EnvironmentObject var viewModel: EnteringTheReceivedCodeViewModel
    @EnvironmentObject var router: RouterHW11
    var body: some View {
        VStack(spacing: 49) {
            VStack(alignment: .center, spacing: 8) {
                Text("Введите код")
                    .font(.title)
                    .bold()
                VStack(alignment: .center, spacing: 10) {
                    Text("Отправили код на номер")
                    Text(viewModel.phoneNumber)
                    
                }
            }
                .font(.system(.body))
                .multilineTextAlignment(.center)
                PinCodeTextFieldView()
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    viewModel.phoneNumber = ""
                    router.goBack()
                } label: {
                    Image("vector")
                        .bold()
                }
                
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct EnteringCodeTextView_Previews: PreviewProvider {
    static var previews: some View {
        EnteringCodeTextView()
            .environmentObject(EnteringTheReceivedCodeViewModel(numberOfFields: 4))
    }
}
