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
    
    func saveCreditor(
        person: String,
        loan: Double
    )
    {
        let creditor = MyLoanModel(creditor: person, summ: loan)
        
        context.insert(creditor)
        
        do {
            try context.save()
            print("Кредитор успешно сохранен")
        } catch {
            print(error)
        }
    } // конец save метода
    
    func fetchMyLoans() -> [MyLoanModel] {
        let descroptor = FetchDescriptor<MyLoanModel>()
        
        do {
            return try context.fetch(descroptor)
        } catch {
            print(error)
            return []
        }
    } // конец fetch метода
}
