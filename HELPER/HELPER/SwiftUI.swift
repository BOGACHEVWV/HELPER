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
