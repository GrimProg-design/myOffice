//
//  AddNewLoanView.swift
//  myOffice
//
//  Created by Вавилов Илья on 5/5/26.
//

import SwiftUI
import SwiftData

struct AddNewLoanView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var viewModel: MyLoanViewModel?
    
    @State private var name = ""
    @State private var summ = ""
    
    var body: some View {
        List {
            Section("Добавить нового кредитора") {
                TextField("Введите имя", text: $name)
                TextField("Введите сумму", text: $summ)
            }
        }
        .onAppear {
            if viewModel == nil {
                viewModel = MyLoanViewModel(context: context)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    viewModel?.saveCreditor(person: name, loan: Double(summ) ?? 0.0)
                    dismiss()
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
