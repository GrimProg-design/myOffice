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
                    Label("Главная", systemImage: "house")
                }
            
            Text("Экран 2")
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
        }
        .tint(.blue)
        .background(.regularMaterial)
    }
}

#Preview {
    ContentView()
}
