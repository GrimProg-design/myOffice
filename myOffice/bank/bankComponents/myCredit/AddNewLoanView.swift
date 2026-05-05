//
//  AddNewLoanView.swift
//  myOffice
//
//  Created by Вавилов Илья on 5/5/26.
//

import SwiftUI

struct AddNewLoanView: View {
    @State private var name = ""
    @State private var summ = ""
    
    var body: some View {
        
        List() {
            Section("Добавить нового кредитора") {
                TextField("Введите имя", text: $name)
                TextField("Введите сумму", text: $summ)
            } // конец Section
        } // конец List
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

#Preview {
    AddNewLoanView()
}
