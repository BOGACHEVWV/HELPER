//
//  modificators.swift
//  HELPER
//
//  Created by mac on 02.03.2021.
//  Copyright © 2021 BOGACHEVWV. All rights reserved.
//


// MARK: -
/*
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

// MARK: - shadow fo Views
/*
 
 struct shadowForViews:ViewModifier {
     func body(content: Content) -> some View {
         content
             .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 2, y: 4)
     }
 }

 extension View {
     func borderedView() -> some View {
         modifier(shadowForViews())
     }
 }
 
 */
