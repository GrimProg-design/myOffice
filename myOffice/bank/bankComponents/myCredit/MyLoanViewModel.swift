//
//  MyLoanViewModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 5/5/26.
//

import Foundation
import SwiftData

final class MyLoanViewModel {
    private var context: ModelContext
    
    init(context: ModelContext) {
        self.context = context
    }
    
    func fetchMyLoans() -> [MyLoanModel] {
        var descroptor = FetchDescriptor<MyLoanModel>()
        
        do {
            return try context.fetch(descroptor)
        } catch {
            print(error)
            return []
        }
    } // конец fetch метода
}
