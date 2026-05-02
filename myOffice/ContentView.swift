//
//  ContentView.swift
//  myOffice
//
//  Created by Вавилов Илья on 31/3/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            BankView()
                .tabItem {
                    Label("Банк", systemImage: "dollarsign.bank.building")
                }
            
            Text("Экран 2")
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
        }
        .tint(Color("Apricot"))
        .background(.regularMaterial)
    }
}

#Preview {
    ContentView()
}
