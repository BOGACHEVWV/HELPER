//
//  ViewController.swift
//  HELPER
//
//  Created by mac on 12/01/2020.
//  Copyright © 2020 BOGACHEVWV. All rights reserved.
//
// MARK: - Порядок (структура класса)
//- IB Outlets
//- Public Properties
//- Private Properties
//- Inirializers
//- Override methods
//- IB Actions
//- Public methods
//- Private methods

// MARK: - округление чисел
// %[флаги][ширина][.точность][размер]тип
//private func string(from slider: UISlider) -> String {
//    return String(format: "%.2f", slider.value)
//String(format: "%.3f", 1.34567) // 1.346
//String(format: "%.2f", 1.34567) // 1.35
//String(format: "%.1f", 1.34567) // 1.3
//String(format: "%.0f", 1.34567) // 1
//}
//round(1.3) // 1
//round(1.5) // 2
//round(-1.3) // -1
//round(-1.5) // -2
//
//floor(1.3) // 1
//floor(1.5) // 1
//floor(-1.3) // -2
//floor(-1.5) // -2
//
//
//ceil(1.3) // 2
//ceil(1.5) // 2
//ceil(-1.3) // -1
//ceil(-1.5) // -1

// MARK: - Генератор случайного числа
//    let randomInt = Int.random(in: 0..<6)
//    let randomDouble = Double.random(in: 2.71828...3.14159)
//    let randomBool = Bool.random()
//    стандартные библиотечные функции для высококачественных случайных чисел: arc4random() или arc4random_uniform(),

// MARK: - Textfield. Textfield deligate
//private func configurateTF() {
//redTF.delegate = self
//greenTF.delegate = self
//blueTF.delegate = self

// MARK: - Textfield  Клавиатура скрывается тапом по экрану
//override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//    super.touchesBegan(touches, with: event)
//    view.endEditing(true)
//}

// MARK: - Textfield. Textfield deligate.  Клавиатура скрывается нажатием на Return
//   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//       textField.resignFirstResponder()
//       return true

// MARK: - Textfield. Textfield deligate. Действие после того, как курсор уходит из Textfield
//func textFieldDidEndEditing(_ textField: UITextField) {
//        guard let text = textField.text else { return }
//        if let currentValue = Float(text) {
//            switch textField.tag {
//            case 0:
//                redSlider.value = currentValue
//                setValue(for: redColorLabel)
//            case 1:
//                greenSlider.value = currentValue
//                setValue(for: greenColorLabel)
//            case 2:
//                blueSlider.value = currentValue
//                setValue(for: blueColorLabel)
//            default:
//                break
//            }
//            setColorView()
//        }
//    }
//
//}

