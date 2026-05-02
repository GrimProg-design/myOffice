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
        persent perMounth: Double,
        loan term: Int
    ) -> Double {
        
        let rate = perMounth
        let n = Double(term)
        
        let powValue = pow(1 + rate, n)
        
        return sum * (rate * powValue) / (powValue - 1)
    }
}
