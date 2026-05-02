//
//  CreditViewModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import Foundation

struct CreditViewModel: CreditModel {
    func perMounth(
        credit sum: Double,
        persent perYear: Double,
        loan term: Int
    ) async -> Double {

        let rate = perYear / 12 / 100
        let n = Double(term)

        let powValue = pow(1 + rate, n)

        return sum * (rate * powValue) / (powValue - 1)
    }
}
