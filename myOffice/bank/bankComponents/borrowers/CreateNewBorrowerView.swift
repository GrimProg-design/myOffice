//
//  CreateNewBorrowerView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI

struct CreateNewBorrowerView: View {
    var body: some View {
        ZStack {
            Color("CocoBlack")
                .ignoresSafeArea()
            
            Form {
                
            }
            .frame(width: 300, height: 360)
            .scrollContentBackground(.hidden)
            .background(Color("Apricot"))
            .cornerRadius(20)
            .scrollDisabled(true)
        }
    }
}

#Preview {
    CreateNewBorrowerView()
}
