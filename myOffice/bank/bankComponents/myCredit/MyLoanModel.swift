//
//  MyLoanModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 5/5/26.
//

import Foundation

final class MyLoanModel {
    var creditor: String
    var summ: Double
    
    init(creditor: String, summ: Double) {
        self.creditor = creditor
        self.summ = summ
    }
}
