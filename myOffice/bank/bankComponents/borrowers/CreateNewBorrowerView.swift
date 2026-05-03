//
//  CreateNewBorrowerView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI
import Foundation
import SwiftData

struct CreateNewBorrowerView: View {
    @Environment(\.modelContext) private var context
    @State private var viewModel: BorrowersViewModel?
    
//    Стейты для полей
    @State private var personName = ""
    @State private var dateOfReturn = ""
    @State private var start: Date = Date()
    @State private var summ = ""
    @State private var returnSum = ""
    @State private var returnPerMonth = ""
    @State private var month: [String] = []
    
//    Для отображения предупреждения о том что не все поля заполнены
    @State private var showingAlert = false
    
    
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

                TextField("Дата возвратов", text: $dateOfReturn)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)
                
                DatePicker("Начало платежей", selection: $start, displayedComponents: .date)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(15)
                    .datePickerStyle(.compact)
                    .foregroundStyle(Color(.gray).opacity(0.5))

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
                if personName == "" ||
                    dateOfReturn == "" ||
                    summ == "" ||
                    returnSum == "" ||
                    returnPerMonth == ""
                {
                    showingAlert = true
                } else {
                    viewModel?.saveBorrower(person: personName, returnDate: dateOfReturn, when: start, loan: Double(summ) ?? 0.0, returnSum: Double(returnSum) ?? 0.0, perMonth: Double(returnPerMonth) ?? 0.0, months: month)
                }
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
            .alert("Пожалуйста введите все данные в поля", isPresented: $showingAlert) {
                Button("OK", role: .cancel) {}
            }
            .tint(.black)
            
            
        } // конец ZStack
        .onAppear {
            if viewModel == nil {
                viewModel = BorrowersViewModel(context: context)
            }
        }
    } // конец body
}

#Preview {
    CreateNewBorrowerView()
}
