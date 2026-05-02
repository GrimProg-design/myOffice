//
//  BankView.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI

struct BankView: View {
    var body: some View {
        VStack {
            ZStack {
                
                Color("CocoBlack")
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    ZStack {
                        Text("My Bank")
                    }
                    .frame(height: 400)
                    .frame(maxWidth: .infinity)
                    .background(Color("Apricot"))
                    .clipShape(
                        UnevenRoundedRectangle(
                            bottomLeadingRadius: 50,
                            bottomTrailingRadius: 50
                        )
                    )
                    .ignoresSafeArea()
                    
                    List {
                        
                        Text("Hi")
                            .foregroundStyle(.white)
                            .listRowBackground(
                                Color("CocoBlack")
                            )
                        
                        Text("How")
                            .foregroundStyle(.white)
                            .listRowBackground(
                                Color("CocoBlack")
                            )
                    }
                    .listStyle(.plain)
                    .scrollContentBackground(.hidden)
                }
            }
        }
    }
}

#Preview {
    BankView()
}
