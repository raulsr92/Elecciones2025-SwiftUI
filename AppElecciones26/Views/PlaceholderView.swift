//
//  PlaceholderView.swift
//  AppElecciones26
//
//  Created by user278624 on 10/15/25.
//

import SwiftUI

struct PlaceholderView: View {
    let title:String
    
    var body: some View {
        
        VStack(spacing: 20) {
            //TopBar() // ✅ Tu barra superior
            Spacer()
            Text("Pantalla de \(title)")
                .font(.title)
                .foregroundStyle(.gray)
            Spacer()
        }
    }
}

#Preview {
    PlaceholderView(title: "Planes")
}
