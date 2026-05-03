//
//  CreateNewBorrowerView.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import SwiftUI

struct CreateNewBorrowerView: View {
    @State private var text = ""
    
    var body: some View {
        ZStack {
            Color("CocoBlack")
                .ignoresSafeArea()
            
            Text("Создать нового заемщика")
                .padding(.bottom, 540)
                .foregroundStyle(.white)
                .font(.title)
                .fontWeight(.bold)
            
            Form {
                TextField("Имя заемщика", text: $text)
                
                TextField("Дата возвратов", text: $text)
                
                TextField("Начало платежей", text: $text)
                
                TextField("Сумма кредита", text: $text)
                
                TextField("Сумма возврата", text: $text)
                
                TextField("Ежемесячная плата", text: $text)
                
//                тут будут месяцы
            }
            .frame(width: 300, height: 360)
            .scrollContentBackground(.hidden)
            .background(Color("Apricot"))
            .cornerRadius(20)
            .scrollDisabled(true)
        }
    }
}

#Preview {
    CreateNewBorrowerView()
}
