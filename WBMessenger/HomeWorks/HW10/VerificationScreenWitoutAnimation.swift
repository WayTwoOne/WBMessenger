//
//  VerificationScreenWitoutAnimation.swift
//  WBMessenger
//
//  Created by Vladimir on 05.07.2024.
//

import SwiftUI

struct VerificationScreenWitoutAnimation: View {
    @State private var letsGo = false
    
    @EnvironmentObject var viewModel: EnteringTheReceivedCodeViewModel
    @EnvironmentObject var router: RouterHW11
    
    var body: some View {
        VStack {
            PhoneNumberLabel()
            PhoneNumberTextField(phoneNumber: $viewModel.phoneNumber, countryCode: $viewModel.countryCode, letsGo: $letsGo)
            ContinueButton(letsGo: $letsGo, phoneNumber: $viewModel.phoneNumber, countryCode: $viewModel.countryCode)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
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

struct VerificationScreenWitoutAnimation_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreenWitoutAnimation()
    }
}
