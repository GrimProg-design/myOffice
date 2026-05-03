//
//  BorrowersView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI
import Foundation

struct BorrowersView: View {
    @Environment(\.modelContext) private var context
    @State private var viewModel: BorrowersViewModel?
    @State private var borrowers: [BorrowersModel] = []
    
    var body: some View {
        ZStack {
            Color("CocoBlack")
                .ignoresSafeArea()
            
            List(borrowers) {person in
                BorrowersTaleView(borrower: person)
            }
        } // конец ZStack
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: CreateNewBorrowerView()) {
                    Image(systemName: "plus")
                        .font(.title3)
                }
            }
        } // конец toolbar
        .onAppear {
            if viewModel == nil {
                viewModel = BorrowersViewModel(
                    context: context
                )
            }
            
            borrowers = viewModel?.fetchBorrower() ?? []
        } // конец onAppear
    } // body
}

#Preview {
    BorrowersView()
}
