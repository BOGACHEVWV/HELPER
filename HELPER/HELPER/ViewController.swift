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

// MARK: - Округление чисел
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
//MARK: - Emojy. ctrl+command+space

//MARK: - print(#fuction) показывает название метода из которого был вызван этот принт. (позволяет определить, когда работает метод)
//MARK: - self пишем, если требуется использовать свойство класса

// MARK: - Генератор случайного числа
//    let randomInt = Int.random(in: 0..<6)
//    let randomDouble = Double.random(in: 2.71828...3.14159)
//    let randomBool = Bool.random()
//    стандартные библиотечные функции для высококачественных случайных чисел: arc4random() или arc4random_uniform(),

// MARK: - Textfield.
//Textfield deligate
//private func configurateTF() {
//redTF.delegate = self
//greenTF.delegate = self
//blueTF.delegate = self

//Textfield.  Клавиатура скрывается тапом по экрану
//override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//    super.touchesBegan(touches, with: event)
//    view.endEditing(true)
//}

//Textfield. Textfield deligate.  Клавиатура скрывается нажатием на Return
//   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//       textField.resignFirstResponder()
//       return true

//Textfield. Textfield deligate. Действие после завершения работы с textfield
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
// MARK: - Aletrt
//private func showAlert() {
//let alert = UIAlertController(title: "Wrong format!", message: "Please, enter correct value", preferredStyle: .alert)
//let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//alert.addAction(cancel)
//present(alert, animated: true, completion: nil)

// MARK: - Отображения кнопки "Готово" на цифровой клавиатуре
//extension ViewController {
//
//private func addDoneButtonTo(_ textFields: UITextField...) {
//
//    textFields.forEach { textField in
//        let keyboardToolbar = UIToolbar()
//        textField.inputAccessoryView = keyboardToolbar
//        keyboardToolbar.sizeToFit()
//
//        let doneButton = UIBarButtonItem(title:"Done",
//                                         style: .done,
//                                         target: self,
//                                         action: #selector(didTapDone))
//
//        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
//                                            target: nil,
//                                            action: nil)
//
//        keyboardToolbar.items = [flexBarButton, doneButton]
//    }
//}
//
//@objc private func didTapDone() {
//    view.endEditing(true)
//}
//
//}
//MARK: - Segue
//Segue. Возврат с вьюконтролера без сохранения инфы
//@IBAction func closeVCBbutton() {
//dismiss(animated: true, completion: nil)
//    }

//Возврат с вьюконтроллера с возможностью передачи данных (данный код пишется на вью, на который возвращаемся
//@IBAction func unwindSegue(segue: UIStoryboardSegue) {
//guard segue.identifier == "saveSegue" else { return }
//let sourseVC = segue.source as! SecondViewController
//(создается на вьюконтроллере, на который нужно вернуться (segue.source). В сториборде перетягивается с кнопки на  Exit

//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//super.prepare(for: segue, sender: sender)
//guard segue.identifier == "saveSegue" else { return }

//Segue (show) - работает с Navigation controller
//Segue (show detail) - работает с  UISplitViewController
//Segue (present modally) - для открытия временных окон. (нстройки, плеер)

//MARK: - swipe (UISwipeGesture) - https://www.youtube.com/watch?v=eMmBiyZ3lBA

//MARK: - NavigationBar
//сделать NavigationBar прозрачным: navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)

//NavigationBar. скрыть разделительную полосу: navigationController?.navigationBar.shadowImage = UIImage()

//NavigationBar. изменить цвет иконок. navigationController?.navigationBar.tintColor = .white

//NavigationBar. Сделать Бар большим navigationController?.navigationBar.prefersLargeTitles = true

//NavigationBar. Изменить цвет текста у title: navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.blue]

//NavigationBar. Добавить изображение и текст в title:
//func setupNavigationBar() {
//
//let imageView = UIImageView(image: #imageLiteral(resourceName: "info@3x.png"))
//imageView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
//imageView.contentMode = .scaleAspectFit
//
//let label = UILabel()
//label.text = "FAQ"
//label.font = UIFont(name: "OpenSansCondensed-Bold", size: 30)
//label.textColor = .white
//
//let stackView = UIStackView(arrangedSubviews: [imageView, label])
//stackView.axis = .horizontal
//stackView.frame.size = CGSize(width: imageView.frame.size.width + label.frame.size.width, height: max(imageView.frame.size.height, label.frame.size.height))
//stackView.spacing = 20
//
//navigationItem.titleView = stackView
//
//if #available(iOS 11.0, *) {
//    navigationItem.largeTitleDisplayMode = .never
//}

//MARK: - Версия iOS установленная на устройстве:
//if #available(iOS 11.0, *) {

//MARK: - TableView//

//   настройка ячейки

//   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//       let cell = tableView.dequeueReusableCell(withIdentifier: "testTableViewCell", for: indexPath) as! TestTableViewCell
//       let object = objects[indexPath.row]
//       cell.setUI(object: object)
// setUI на вьюконтроллере ячейки
//func setUI(object: Emoji) {
//   emojiLabel.text = object.emoji
//   nameLabel.text = object.name
//   describtionLabel.text = object.describtion
//   }
//
//       return cell
//   }
//
//   функция кнопки Edit на navigationBar

//   override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//       return .delete
//   } // delete установлено по умолчанию
//
//   настройка функции кнопки Edit

//   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//       if editingStyle == .delete {
//           // Delete the row from the data source
//           objects.remove(at: indexPath.row)
//           tableView.deleteRows(at: [indexPath], with: .fade)
//       }
//   }

//   перемещение ячейки (бургер справа)

//   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//       return true
//   }
//
//   override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//       let removedCell = objects.remove(at: sourceIndexPath.row)
//       objects.insert(removedCell, at: destinationIndexPath.row)
//       tableView.reloadData()
//    }
//   leadingSwipeActionsConfigurationForRowAt или  trailingSwipeActionsConfigurationForRowAt
//   override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//       let done = doneAction(at: indexPath)
//       let changeColor = changeColorAction(at: indexPath)
//       return UISwipeActionsConfiguration(actions: [done, changeColor])
//   }
//
//
//   func doneAction(at indexPath: IndexPath) -> UIContextualAction {
//       let action = UIContextualAction(style: .destructive, title: "Done") { (action, view, completion) in
//           self.objects.remove(at: indexPath.row)
//           self.tableView.deleteRows(at: [indexPath], with: .automatic)
//           completion(true)
//       }
//       action.backgroundColor = .systemPink
//       action.image = UIImage(systemName: "trash.circle.fill")
//       return action
//   }
//
//   func changeColorAction(at indexPath: IndexPath) -> UIContextualAction {
//       var object = objects[indexPath.row]
//       let action = UIContextualAction(style: .normal, title: "Change color") { (action, view, completion) in
//           object.isFavorite = !object.isFavorite
//           self.objects[indexPath.row] = object
//           completion(true)
//       }
//
//       action.backgroundColor = object.isFavorite ? .black : .blue // если true, то  black
//       action.image = UIImage(systemName: "paintbrush.fill")
//       return action
//   }

// SVGSwift https://cocoapods.org/pods/SwiftSVG
