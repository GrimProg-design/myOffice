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
            List {
                ForEach(loans) { loan in
                    VStack(alignment: .leading) {
                        Text(loan.creditor)
                            .font(.headline)
                        Text("\(loan.summ.formatted())")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .onDelete(perform: deleteCreditor)
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

    func deleteCreditor(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                let item = loans[index]
                context.delete(item)
            }
            try? context.save()
        }
    }
}

#Preview {
    MyLoanView()
        .modelContainer(for: MyLoanModel.self, inMemory: true)
}
