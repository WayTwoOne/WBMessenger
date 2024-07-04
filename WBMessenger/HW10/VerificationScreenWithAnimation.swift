//
//  VerificationScreenWithAnimation.swift
//  Profile
//
//  Created by Vladimir on 04.07.2024.
//

import SwiftUI

struct VerificationScreenWithAnimation: View {
    @State private var letsGo = false
    @State private var phoneNumber = ""
    @State private var countryCode = ""
    
    var body: some View {
        VStack {
            PhoneNumberLabel()
                .offset(x: 0, y: letsGo ? -520 : 0)
                .animation(.easeIn(duration: 3), value: letsGo)
            PhoneNumberTextField(value: $countryCode, phoneNumber: $phoneNumber, letsGo: $letsGo)
                .offset(x: 0, y: letsGo ? 520 : 0)
                .animation(.easeOut(duration: 3), value: letsGo)
            ContinueButton(letsGo: $letsGo, phoneNumber: $phoneNumber)
        }
    }
}

struct VerificationScreenWithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreenWithAnimation()
    }
}
