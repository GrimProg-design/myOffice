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
            NavigationLink(destination: EmptyView()) {
                HStack {
                    Image(systemName: "house")
                    Text("Кредит")
                }
            }
            .foregroundStyle(.white)
            .listRowBackground(
                Color("CocoBlack")
            )
            .listRowSeparatorTint(.white)
            
            Text("Hi")
                .foregroundStyle(.white)
                .listRowBackground(
                    Color("CocoBlack")
                )
                .listRowSeparatorTint(.white)
            
            
            Text("How")
                .foregroundStyle(.white)
                .listRowBackground(
                    Color("CocoBlack")
                )
                .listRowSeparatorTint(.white)
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    MainBankView()
}
