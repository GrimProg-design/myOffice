//
//  BorrowersTaleView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI
import SwiftData

struct BorrowersTaleView: View {
    //    let someArr = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
    //
    //    @State private var selectedMonths: Set<String> = []
    @Environment(\.modelContext) private var context
    let borrower: BorrowersModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(borrower.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(borrower.date)
                Text(
                    borrower.start.formatted(
                        .dateTime
                            .day()
                            .month(.wide)
                            .year()
                    )
                )
                Text(String(borrower.summ))
                Text(String(borrower.ret))
                Text(String(borrower.perMonth))
            }
            
            FlowLayout {
                
                ForEach(borrower.months) { month in
                    
                    Text(month.name)
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
        .frame(width: 300)
        .background(Color("Apricot"))
        .cornerRadius(20)
    }
}
