//
//  MainBankView.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI

struct MainBankView: View {
    var body: some View {
        List {
            NavigationLink(destination: CreditView()) {
                HStack {
                    Image(systemName: "dollarsign")
                    Text("Кредитный калькулятор")
                }
                .font(.title3)
                .fontWeight(.bold)
                .padding(10)
            }
            .foregroundStyle(.white)
            .listRowBackground(
                Color("CocoBlack")
            )
            .listRowSeparatorTint(.white)
            
            NavigationLink(destination: BorrowersView()) {
                HStack {
                    Image(systemName: "person")
                    Text("Заемщики")
                }
                .font(.title3)
                .fontWeight(.bold)
                .padding(10)
            }
            .foregroundStyle(.white)
            .listRowBackground(
                Color("CocoBlack")
            )
            .listRowSeparatorTint(.white)
            
            
            NavigationLink(destination: MyLoanView()) {
                HStack {
                    Image(systemName: "creditcard")
                    Text("Мои долги")
                }
                .font(.title3)
                .fontWeight(.bold)
                .padding(10)
            }
            .foregroundStyle(.white)
            .listRowBackground(
                Color("CocoBlack")
            ) // конец последней NavigationLink
            .listRowSeparatorTint(.white)
        } // конец List
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
    }
}

// Предпросмотр лучше смотреть в BankView
