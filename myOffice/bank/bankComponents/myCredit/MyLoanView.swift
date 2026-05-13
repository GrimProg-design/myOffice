//
//  creditView.swift
//  myOffice
//
//  Created by Вавилов Илья on 5/5/26.
//

import SwiftUI
import SwiftData

struct MyLoanView: View {
    @Environment(\.modelContext) private var context
    @State private var viewModel: MyLoanViewModel?
    @State private var loans: [MyLoanModel] = []
    
    var body: some View {
        List(loans) { loan in
            VStack(alignment: .leading) {
                Text(loan.creditor)
                Text("\(loan.summ)")
            }
        }
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: AddNewLoanView()) {
                    Image(systemName: "plus")
                }
            }
        }
        .onAppear {
            if viewModel == nil {
                viewModel = MyLoanViewModel(
                    context: context
                )
            }
            loans = viewModel?.fetchMyLoans() ?? []
        } // конец onApper но также конец List
    } // конец body
}

#Preview {
    MyLoanView()
}
