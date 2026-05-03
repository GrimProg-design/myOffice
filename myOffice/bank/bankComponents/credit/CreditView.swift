//
//  CreditView.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI

struct CreditView: View {
    var culculator = CreditViewModel()
    @State private var sum = ""
    @State private var percent = ""
    @State private var loan = ""
    @State private var totalPerMonth = 0.0
    @State private var totalLoan = 0.0
    
    var body: some View {
        ZStack {
            Color("CocoBlack")
                .ignoresSafeArea()
            
            Text("Оформление кредита")
                .foregroundStyle(.white)
                .padding(.bottom, 600)
                .font(.title)
                .fontWeight(.bold)
            
            Form {
                Section {
                    TextField(
                        "",
                        text: $sum,
                        prompt: Text("Введите сумму")
                            .foregroundStyle(.gray))
                        .keyboardType(.decimalPad)
                }
                .listRowBackground(Color.white)
                
                Section {
                    TextField(
                        "",
                        text: $loan,
                        prompt: Text("Срок кредита")
                            .foregroundStyle(.gray))
                        .keyboardType(.decimalPad)
                }
                .listRowBackground(Color.white)
                
                Section {
                    TextField(
                        "",
                        text: $percent,
                        prompt: Text("Проценты")
                            .foregroundStyle(.gray))
                        .keyboardType(.decimalPad)
                }
                .listRowBackground(Color.white)
            }
            .frame(width: 300, height: 360)
            .scrollContentBackground(.hidden)
            .background(Color("Apricot"))
            .cornerRadius(20)
            .scrollDisabled(true)
            
            Button {
                Task {
                    totalPerMonth = await culculator.perMounth(credit: Double(sum) ?? 0.0, persent: Double(percent) ?? 0.0, loan: Int(loan) ?? 0)
                    
                    totalLoan = await culculator.totalReturn(forOneMonth: totalPerMonth, totalMonth: Int(loan) ?? 0)
                }
            } label: {
                Text("Посчитать")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("oneYearOfRain"))
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            .frame(width: 200, height: 40)
            .padding(.top, 220)
            
//            Формат помогает сделать округление после запятой до одного знака
            VStack {
                Text("В месяц: \(String(format: "%.1f", totalPerMonth))")
                    .foregroundStyle(.white)
                Text("Итого: \(String(format: "%.1f", totalLoan))")
                    .foregroundStyle(.white)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .padding(50)
        }
    }
}

#Preview {
    CreditView()
}
