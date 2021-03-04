//
//  SwiftUI.swift
//  HELPER
//
//  Created by mac on 10.02.2021.
//  Copyright © 2021 BOGACHEVWV. All rights reserved.
//


// MARK: -
/*
 */

// MARK: - Клавиатура скрывается тапом по экрану

/*
 Клавиатура скрывается тапом по экрану
 extension UIApplication {
 func endEditing() {
 sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
 }
 }
 пишется к стеку, в котором долны произойти изменения
 .onTapGesture {
 UIApplication.shared.endEditing()
 value = Double(TFtext) ?? 0
 }
 */



// MARK: - Alert
/*
 вызвается модификатором к объекту в котором будут неправильно введеные значения
 
 .alert(isPresented: $showAlert, content: {
 Alert(
 title: Text("Wrong Format"),
 message:Text ("Value from 0 to 255")
 )
 })
 */

// MARK: - onAppear (возможно подойдет для анимации при вкл таймера

/*
 onAppear {}  - при появлении
 */

// MARK: - округление до целых чисел
/*
 lround(Double)
 */

// MARK: - Модификатор. Изменение существующего модификатора
/*
 Изменение существующего модификатора
 
 Image(systemName: "trash")
     .resizable()
     //                .frame(height: 400)
     //                .modifier(FrameFromSize(size: size))
     .frame(size)
 
 
 struct FrameFromSize:ViewModifier {
     var size: CGSize
     func body(content: Content) -> some View {
         content.frame(width: size.width, height: size.height)
     }
 }

 extension View /* / Image */ {
     func frame(_ size: CGSize) -> some View {
         modifier(FrameFromSize(size: size))
     }
 }
 */

// MARK: - Модификатор. Создание собственноого модификатора
/*
 TextField("Enter your name", text: $userName)
 //                        .modifier(BorderedView())
 .borderedView()
 
 struct BorderedView:ViewModifier {
 func body(content: Content) -> some View {
 content
 .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
 //                        .background(Color.yellow)
 .overlay(
 RoundedRectangle(cornerRadius: 10)
 .stroke(Color.red, lineWidth: 2)
 .shadow(color: Color.black.opacity(1), radius: 1)
 )
 }
 }
 
 extension View {
 func borderedView() -> some View {
 modifier(BorderedView())
 }
 }
 */


// MARK: - padding() Сразу во все встороны
/*
 .padding(EdgeInsets(top: <#T##CGFloat#>, leading: <#T##CGFloat#>, bottom: <#T##CGFloat#>, trailing: <#T##CGFloat#>))
 */


// MARK: - 00:00 (секунды в минуты и секунды)
/*
 func secondsToMinutesAndSeconds(seconds: Int) -> String {
     let minutes = "\((seconds % 3600) / 60)"
     let seconds = "\((seconds % 3600) % 60)"
     let minuteStamp = minutes.count > 1 ? minutes : "0" + minutes
     let secondStamp = seconds.count > 1 ? seconds : "0" + seconds
     
     return "\(minuteStamp):\(secondStamp)"
 }
 */
 // MARK: - 00:00:00 (секунды в часы, минуты и секунды)
 /*
 func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int)
 {
 return ((seconds / 3600), ((seconds % 3600) / 60),((seconds % 3600) % 60))
 }
 
 func makeTimeString(hours: Int, minutes: Int, seconds : Int) -> String
 {
 var timeString = ""
 timeString += String(format: "%02d", hours)
 timeString += " : "
 timeString += String(format: "%02d", minutes)
 timeString += " : "
 timeString += String(format: "%02d", seconds)
 return timeString
 }
 
 
 }
 Второй вариант
 extension TimerPage {
     func secondsToMinutesAndSeconds(seconds: Int) -> String {
         let hour = "\(seconds / 3600)"
         let minute = "\((seconds % 3600) / 60)"
         let second = "\((seconds % 3600) % 60)"
         let hourStamp = hour.count > 1 ? hour : "" + hour
         let minuteStamp = minute.count > 1 ? minute : "0" + minute
         let secondStamp = second.count > 1 ? second : "0" + second
         
         return
             seconds > 3599 ? "\(hourStamp):\(minuteStamp):\(secondStamp)" :
             "\(minuteStamp):\(secondStamp)"
 */
 // MARK: - 00:00 (секунды в минуты и секунды + часы в минуты)
 /*
 extension TimerPage {
     func secondsToMinutesAndSeconds(seconds: Int) -> String {
         let hour = "\((seconds / 3600) * 60 + ((seconds % 3600) / 60))"
         let minute = "\((seconds % 3600) / 60)"
         let second = "\((seconds % 3600) % 60)"
         let hourPlusMinute =  hour
         let minuteStamp = minute.count > 1 ? minute : "0" + minute
         let secondStamp = second.count > 1 ? second : "0" + second
         
         return
             seconds > 3599 ? "\(hourPlusMinute):\(secondStamp)" :
             "\(minuteStamp):\(secondStamp)"
         
     }
 }
 
  */


// MARK: - NavigationBar кастомный
/*
 
 struct CustomNavBar<Left, Center, Right>: View where Left: View, Center: View, Right: View {
     let left: () -> Left
     let center: () -> Center
     let right: () -> Right
     init(@ViewBuilder left: @escaping () -> Left, @ViewBuilder center: @escaping () -> Center, @ViewBuilder right: @escaping () -> Right) {
         self.left = left
         self.center = center
         self.right = right
     }
     var body: some View {
         ZStack {
             HStack {
                 left()
                 Spacer()
             }
             center()
             HStack {
                 Spacer()
                 right()
             }
         }
     }
 }
 
 Использование
 
 struct ContentView: View {
     let buttonSize: CGFloat = 30
     var body: some View {
         VStack {
             CustomNavBar(left: {
                 Button(action: {
                     print("Tapped")
                 }, label: {
                     Image(systemName: "star")
                         .resizable()
                         .frame(width: self.buttonSize, height: self.buttonSize, alignment: .leading)
                 }).padding()
             }, center: {
                 Image(systemName: "star")
                     .resizable()
                     .frame(width: 30, height: 30, alignment: .center)
             }, right: {
                 HStack {
                     Text("Long text here")
                     Image(systemName: "star")
                         .resizable()
                         .frame(width: 30, height: 30, alignment: .center)
                         .padding(.trailing)
                 }.foregroundColor(.red)
             })
             Spacer()
             Text("Normal Content")
             Spacer()
         }
     }
 }
 
 */

// MARK: - NavigationView изменить цвет navigationView (в том числе при .inline)
/*
 https://stackoverflow.com/questions/56505528/swiftui-update-navigation-bar-title-color
 
 struct NavigationBarModifier: ViewModifier {

     var backgroundColor: UIColor?
     var titleColor: UIColor?

     init(backgroundColor: UIColor?, titleColor: UIColor?) {
         self.backgroundColor = backgroundColor
         let coloredAppearance = UINavigationBarAppearance()
         coloredAppearance.configureWithTransparentBackground()
         coloredAppearance.backgroundColor = backgroundColor
         coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .white]
         coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .white]

         UINavigationBar.appearance().standardAppearance = coloredAppearance
         UINavigationBar.appearance().compactAppearance = coloredAppearance
         UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
     }

     func body(content: Content) -> some View {
         ZStack{
             content
             VStack {
                 GeometryReader { geometry in
                     Color(self.backgroundColor ?? .clear)
                         .frame(height: geometry.safeAreaInsets.top)
                         .edgesIgnoringSafeArea(.top)
                     Spacer()
                 }
             }
         }
     }
 }

 extension View {

     func navigationBarColor(backgroundColor: UIColor?, titleColor: UIColor?) -> some View {
         self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
     }

 }
 
 After that, apply like this:

 .navigationBarColor(backgroundColor: .clear, titleColor: .white)
 
 */

