//
//  HeaderBankView.swift
//  myOffice
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI
import Charts

struct LoanSector: Identifiable {
    let id = UUID()
    let creditor: String
    let amount: Double
    let color: Color
}

struct HeaderBankView: View {
    let sampleData = [
        LoanSector(creditor: "Сбер", amount: 5000, color: .red),
        LoanSector(creditor: "Тинькофф", amount: 12000, color: .yellow),
        LoanSector(creditor: "Брат", amount: 3000, color: .blue),
        LoanSector(creditor: "Альфа", amount: 8000, color: .black)
    ]
    
    var body: some View {
        VStack {
            Text("My Bank")
            
            Chart(sampleData) { item in
                SectorMark(
                    angle: .value("Сумма", item.amount),
                    innerRadius: .ratio(0.6),
                )
                .cornerRadius(5)
                .foregroundStyle(item.color)
                .foregroundStyle(by: .value("Кредитор", item.creditor))
            }
            .frame(height: 300)
            .padding()
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
    }
}

// Предпросмотр лучше смотреть в BankView
