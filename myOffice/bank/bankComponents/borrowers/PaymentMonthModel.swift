//
//  PaymentMonth.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import Foundation
import SwiftData

@Model
final class PaymentMonth: Identifiable {

    var name: String
    var isPaid: Bool

    init(
        name: String,
        isPaid: Bool = false
    ) {
        self.name = name
        self.isPaid = isPaid
    }
}
