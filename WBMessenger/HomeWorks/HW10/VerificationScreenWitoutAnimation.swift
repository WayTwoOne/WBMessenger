//
//  VerificationScreenWitoutAnimation.swift
//  WBMessenger
//
//  Created by Vladimir on 05.07.2024.
//

import SwiftUI

struct VerificationScreenWitoutAnimation: View {
    @State private var letsGo = false
    @State private var phoneNumber = ""
    @State private var countryCode = ""
    
    @EnvironmentObject var router: RouterHW11
    
    var body: some View {
        VStack {
            PhoneNumberLabel()
            PhoneNumberTextField(value: $countryCode, phoneNumber: $phoneNumber, letsGo: $letsGo)
            ContinueButton(letsGo: $letsGo, phoneNumber: $phoneNumber, countryCode: $countryCode)
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
