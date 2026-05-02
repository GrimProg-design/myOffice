//
//  CreditModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import Foundation

protocol CreditModel {
    func perMounth(credit sum: Double, persent perMonth: Double, loan term: Int) -> Double
}
