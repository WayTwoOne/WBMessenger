//
//  VerificationView.swift
//  WBMessenger
//
//  Created by Vladimir on 04.06.2024.
//

import SwiftUI

struct VerificationView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Text("")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image("vector")
                            
                        }
                    }
                }
        }
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
