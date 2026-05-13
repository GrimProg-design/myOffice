//
//  creditView.swift
//  myOffice
//
//  Created by Вавилов Илья on 5/5/26.
//

import SwiftUI
import SwiftData

struct MyLoanView: View {
    @Query(sort: \MyLoanModel.creditor) private var loans: [MyLoanModel]
    
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationStack { 
            List(loans) { loan in
                VStack(alignment: .leading) {
                    Text(loan.creditor)
                        .font(.headline)
                    Text("\(loan.summ.formatted())")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Мои долги")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AddNewLoanView()) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    MyLoanView()
}
