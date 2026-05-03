//
//  BorrowersModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftData
import Foundation

// Описание модели для карточки одного пользователя
@Model
final class BorrowersModel {
    var name: String
    var date: Date
    var start: String
    var summ: Double
    var ret: Double
    var perMonth: Double
    var months: [String]
    
    init(name: String, date: Date = Date(), start: String, summ: Double, ret: Double, perMonth: Double, months: [String]) {
        self.name = name
        self.date = date
        self.start = start
        self.summ = summ
        self.ret = ret
        self.perMonth = perMonth
        self.months = months
    }
}
