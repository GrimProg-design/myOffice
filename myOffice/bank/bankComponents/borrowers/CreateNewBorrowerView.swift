//
//  CreateNewBorrowerView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI

struct CreateNewBorrowerView: View {
    @State private var text = ""
    
    @State private var personName = ""
    @State private var dateOfReturn: Date = Date()
    @State private var start = ""
    @State private var summ = ""
    @State private var returnSum = ""
    @State private var returnPerMonth = ""
    @State private var month: [String] = []
    
    
    var body: some View {
        ZStack {
            Color("CocoBlack")
                .ignoresSafeArea()
            
            Text("Создать нового заемщика")
                .padding(.bottom, 540)
                .foregroundStyle(.white)
                .font(.title)
                .fontWeight(.bold)
            
            VStack(spacing: 12) {
                TextField("Имя заемщика", text: $personName)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)

                TextField("Дата возвратов", text: $text)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)

                TextField("Начало платежей", text: $start)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)

                TextField("Сумма кредита", text: $summ)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)

                TextField("Сумма возврата", text: $returnSum)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)

                TextField("Ежемесячная плата", text: $returnPerMonth)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)
                
//                тут будут месяцы массив
            }
            .padding()
            .frame(width: 300)
            .background(Color("Apricot"))
            .cornerRadius(20)
            
            Button {
                
            } label: {
                HStack {
                    Text("Сохранить пользователя")
                    Image(systemName: "square.and.arrow.down")
                }
                .frame(width: 260, height: 50)
                .background(.green)
                .cornerRadius(15)
            }
            .padding(.top, 550)
            
            
        } // конец ZStack
    } // конец body
}

#Preview {
    CreateNewBorrowerView()
}
