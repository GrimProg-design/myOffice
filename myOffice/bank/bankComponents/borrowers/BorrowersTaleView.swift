//
//  BorrowersTaleView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI
import SwiftData

struct BorrowersTaleView: View {
    @Environment(\.modelContext) private var context
    let borrower: BorrowersModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("Имя: \(borrower.name)")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Каждый месяц: \(borrower.date) числа")
                    
                    Text(
                        borrower.start.formatted(
                            .dateTime.day().month(.wide).year()
                        )
                    )
                    
                    Text("Сумма займа: \(String(borrower.summ))")
                    Text("Сумма возврата \(String(borrower.ret))")
                    Text("Ежемесячная плата \(String(borrower.perMonth))")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
                
                FlowLayout {
                    
                    ForEach(borrower.months) { month in
                        
                        Text(month.name)
                            .foregroundStyle(month.isPaid ? .white : .black)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(
                                month.isPaid ? .green : .white
                            )
                            .clipShape(Capsule())
                            .onTapGesture {
                                
                                month.isPaid.toggle()
                                
                                do {
                                    try context.save()
                                } catch {
                                    print(error)
                                }
                            }
                    }
                }
                .padding() // конец FlowLayout
            } // конец VStack
            .padding()
            .background(Color("Apricot"))
            .cornerRadius(20)
        }
    }
}
