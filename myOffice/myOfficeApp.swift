//
//  myOfficeApp.swift
//  myOffice
//
//  Created by Вавилов Илья on 31/3/26.
//

import SwiftUI
import SwiftData

@main
struct myOfficeApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [BorrowersModel.self, MyLoanModel.self])
    }
}
