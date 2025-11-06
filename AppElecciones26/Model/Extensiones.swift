//
//  Extensiones.swift
//  AppElecciones26
//
//  Created by user278624 on 11/5/25.
//

import Foundation
import SwiftUI

extension TextField{
    
    func textFieldStyle(backgroundColor: Color) -> some View {
        
        self
            .keyboardType(.default)
            .autocorrectionDisabled(true)
            .padding()
            .font(.headline)
            .foregroundColor(Color.black)
            .background(backgroundColor.opacity(0.6))
            .overlay(content: {
                RoundedRectangle(cornerRadius: 20).stroke(Color(red:246/255,green: 82/255,blue: 112/255), lineWidth: 4)
            })
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal,20)
    }
}

extension Text{
    
    func textStyle() -> some View{
        
        self
            .font(.system(size: 20,weight: .semibold, design: .monospaced))
            .foregroundStyle(Color(red:71/255,green:110/255,blue:174/255))
    }
    
    
}
