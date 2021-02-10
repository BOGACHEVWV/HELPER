//
//  SwiftUI.swift
//  HELPER
//
//  Created by mac on 10.02.2021.
//  Copyright © 2021 BOGACHEVWV. All rights reserved.
//

// MARK: - Клавиатура скрывается тапом по экрану

//Клавиатура скрывается тапом по экрану
//extension UIApplication {
//    func endEditing() {
//        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//}
// пишется к стеку, в котором долны произойти изменения
//.onTapGesture {
//    UIApplication.shared.endEditing()
//    value = Double(TFtext) ?? 0
//}

// MARK: - Модификаторы
//расположить текст внутри TextField
//.multilineTextAlignment(.trailing)

// MARK: - Alert
// вызвается модификатором к объекту в котором будут неправильно введеные значения

//.alert(isPresented: $showAlert, content: {
//    Alert(
//        title: Text("Wrong Format"),
//        message:Text ("Value from 0 to 255")
//    )
//})
//
// MARK: - onAppear
// onAppear {}  - при появлении

// MARK: - округление до целых чисел
// lround(Double)
