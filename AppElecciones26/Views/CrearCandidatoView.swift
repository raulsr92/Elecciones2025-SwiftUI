//
//  CrearCandidatoView.swift
//  AppElecciones26
//
//  Created by user278624 on 11/5/25.
//

import SwiftUI
//import CoreData

struct CrearCandidatoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Environment(\.managedObjectContext) var mOC
    @StateObject public var objViewModel = CoreDataViewModel()
    
    @State public var nombres: String = ""
    @State public var apellidos: String = ""
    //@State public var dni: String = ""
    @State public var foto: String = ""
    
    var body: some View {
        ZStack(){
            Color(red:235/255,green:235/255,blue:235/255).edgesIgnoringSafeArea(.all)
            
            //Formulario
            VStack(spacing:20){
                Text("Añadir Candidato")
                    .textStyle()
                TextField("Nombres",text: $nombres)
                    .textFieldStyle(backgroundColor: Color(red:235/255,green: 235/255,blue: 235/255))
                TextField("Apellidos",text: $apellidos)
                    .textFieldStyle(backgroundColor: Color(red:235/255,green: 235/255,blue: 235/255))
                TextField("Foto",text: Binding(
                    get:{foto},
                    set:{foto = $0.lowercased()}
                ))
                    .textFieldStyle(backgroundColor: Color(red:235/255,green: 235/255,blue: 235/255))
                
                Button(action: {
                    objViewModel.createCandidato(nombres,apellidos,foto,mOC)
                    dismiss()
                }, label: {
                    Label("Agregar", systemImage: "plus.circle.fill")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .padding(.vertical,10)
                        .padding(.horizontal,30)
                        .background(Color(red:208/255,green:9/255,blue:44/255))
                    
                })
                .cornerRadius(15)
            }
            .padding(.vertical,40)
            //.background(Color.white)
    
        }
    }
}

#Preview {
    CrearCandidatoView()
}
