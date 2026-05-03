//
//  BorrowersView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI

struct BorrowersView: View {
    var body: some View {
        ZStack {
            Color("CocoBlack")
                .ignoresSafeArea()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.title3)
                }
            }
        }
    }
}

#Preview {
    BorrowersView()
}
