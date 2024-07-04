//
//  FlagsAndCountryView.swift
//  Profile
//
//  Created by Vladimir on 03.07.2024.
//

import SwiftUI

struct VerificationScreen: View {
    @State var y : CGFloat = 150
    @State var countryCode = ""
    @State var countryFlag = ""
    @State var search = ""
    
    @Binding var phoneNumber: String
    @Binding var letsGo: Bool
    
        var body: some View {
            ZStack {
                VStack(spacing: 45) {
                    PhoneNumberLabel()
                    HStack (spacing: 0) {
                        Text(countryCode.isEmpty ? "🇷🇺 +7" : "\(countryFlag) +\(countryCode)")
                            .frame(width: 80, height: 44)
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(countryCode.isEmpty ? .secondary : .black)
                            .onTapGesture {
                                withAnimation (.spring()) {
                                    self.y = 0
                                }
                            }
                            .padding(.horizontal, 10)
                        TextField("000 000-00-00", text: $phoneNumber)
                            .frame(height: 10)
                            .padding()
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(5)
                            .keyboardType(.phonePad)
                    }
                    ContinueButton(letsGo: $letsGo, phoneNumber: $phoneNumber)
                }
                .padding()
                    
                
                CountryCodeView(countryCode: $countryCode, countryFlag: $countryFlag, y: $y, search: $search)
                    .offset(y: y)
                
            }
            .hideKeyboardOnTap()
        }
    }


struct VerificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreen(phoneNumber: .constant(""), letsGo: .constant(false))
    }
}
