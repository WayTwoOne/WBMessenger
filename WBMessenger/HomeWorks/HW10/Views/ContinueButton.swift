//
//  ContinueButtonView.swift
//  Profile
//
//  Created by Vladimir on 03.07.2024.
//

import SwiftUI

struct ContinueButton: View {
    @EnvironmentObject var router: RouterHW11
    @EnvironmentObject var viewModel: EnteringTheReceivedCodeViewModel
    
    @Binding var letsGo: Bool
    @Binding var phoneNumber: String
    @Binding var countryCode: String
    
    var body: some View {
        Button {
            letsGo.toggle()
            viewModel.correctPhoneNumber2()
            router.push(.verificationWithCode)
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 35)
                Text("Продолжить")
                    .foregroundColor(.white)
            }
            .frame(width: 350, height: 60, alignment: .center)
            .foregroundColor(Color(red: RGBColor(154), green: RGBColor(65), blue: RGBColor(254)))
            .opacity(continueAction(viewModel.phoneNumber, viewModel.countryCode) ? 0.5 : 1)

        }
        .disabled(continueAction(viewModel.phoneNumber, viewModel.countryCode))
        
    }
    
    private func RGBColor(_ color: Double) -> Double {
           color / 255
       }
    
    private func continueAction(_ phoneNumber: String, _ countryCode: String) -> Bool {
        if phoneNumber.count == 10 && !countryCode.isEmpty {
             return false
        }
        return true
    }
}

struct ContinueButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ContinueButton(letsGo: .constant(false), phoneNumber: .constant("12345"), countryCode: .constant("+7"))
            .environmentObject(EnteringTheReceivedCodeViewModel(numberOfFields: 4))
    }
}
