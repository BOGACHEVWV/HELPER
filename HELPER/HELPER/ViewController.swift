//
//  ViewController.swift
//  HELPER
//
//  Created by mac on 12/01/2020.
//  Copyright © 2020 BOGACHEVWV. All rights reserved.
//
// MARK: - округление до сотых
//private func string(from slider: UISlider) -> String {
//    return String(format: "%.2f", slider.value)
//String(format: "%.3f", 1.34567) // 1.346
//String(format: "%.2f", 1.34567) // 1.35
//String(format: "%.1f", 1.34567) // 1.3
//String(format: "%.0f", 1.34567) // 1
//}

// MARK: - Скрываем клавиатуру нажатием на "Done"
//   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//       textField.resignFirstResponder()
//       return true
//   }
//
// MARK: - Скрытие клавиатуры по тапу за пределами Text Field
//   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//       super.touchesBegan(touches, with: event)
//
//       view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
//   }

// MARK: - Генератор случайного числа
//    let randomInt = Int.random(in: 0..<6)
//    let randomDouble = Double.random(in: 2.71828...3.14159)
//    let randomBool = Bool.random()
//    стандартные библиотечные функции для высококачественных случайных чисел: arc4random() или arc4random_uniform(),
