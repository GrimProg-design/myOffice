//
//  BankView.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI

struct BankView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Color("CocoBlack")
                        .ignoresSafeArea()
                    
                    VStack(spacing: 0) {
//                        MARK: Ораньжевая панель сверху
                        HeaderBankView()
                        
//                        MARK: Основная часть раздела кредита
                        MainBankView()
                    }
                }
            }
        }
    }
}

#Preview {
    BankView()
}
