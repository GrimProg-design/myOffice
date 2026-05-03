//
//  BorrowersViewModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import Foundation
import SwiftData

@Observable
final class BorrowersViewModel {
    private let context: ModelContext
    
    init(context: ModelContext) {
        self.context = context
    }
    
    func saveBorrower(
        person: String,
        returnDate: String,
        when: Date,
        loan: Double,
        returnSum: Double,
        perMonth: Double,
        months: [String]
    ) {
        let person = BorrowersModel(
            name: person,
            date: returnDate,
            start: when,
            summ: loan,
            ret: returnSum,
            perMonth: perMonth,
            months: months
        )
        
        context.insert(person)
        
        do {
            try context.save()
            print("Сохранение прошло успешно")
        } catch {
            print(error)
        }
    }
}
