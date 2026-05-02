//
//  HeaderBankView.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI

struct HeaderBankView: View {
    var body: some View {
        ZStack {
            Text("My Bank")
        }
        .frame(height: 400)
        .frame(maxWidth: .infinity)
        .background(Color("Apricot"))
        .clipShape(
            UnevenRoundedRectangle(
                bottomLeadingRadius: 50,
                bottomTrailingRadius: 50
            )
        )
        .ignoresSafeArea()
    }
}

// Предпросмотр лучше смотреть в BankView
