//
//  UserAgreementAndButtonView.swift
//  WBMessenger
//
//  Created by Vladimir on 04.06.2024.
//

import SwiftUI

struct UserAgreementAndButtonView: View {
    @State var isPresented = false
    @Environment(\.colorScheme) var colorScheme
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
        VStack() {
            Spacer()
            Text("Польззовательское соглашение")
                .font(.system(size: 14))
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(colorScheme == .dark ? Color(.white) : Color(.black))
            Button {
                isPresented.toggle()
            } label: {
                Text("Начать общаться")
                    .frame(width: width * 0.85, height: height * 0.07)
                    .cornerRadius(30)
                    .background(Color(red: 154, green: 65, blue: 254))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .font(.system(size: 16))
                    .bold()
            }
            
            .sheet(isPresented: $isPresented) {
                VerificationView()
            }
            

        }
    }
}

struct UserAgreementAndButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UserAgreementAndButtonView()
    }
}
