//
//  BorrowersModel.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftData

@Model
final class BorrowersModel {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
