//
//  ResultadosView.swift
//  AppElecciones26
//
//  Created by user278624 on 10/15/25.
//

import SwiftUI

struct ResultadosView: View {
    var body: some View {
        VStack(spacing:20){
            Image("banderaperu")
                .resizable()
            //.scaledToFit()
                .frame(height: 20)
                .padding(.horizontal,40)
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(Color.red,lineWidth:1)
                        .frame(height: 20)
                        .padding(.horizontal,40)
                )
            Text("Resultados")
                .font(.system(size: 20,weight: .semibold, design: .monospaced))
                .foregroundStyle(Color(red:71/255,green:110/255,blue:174/255))
            //.background(Color.blue)
            Spacer()
                .frame(height: 60)
            
            VStack(spacing:30){
                
                Button(action: {},
                       label:{
                    VStack(){
                        Image("grafico1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                        
                        Text("Presidenciales")
                            .font(.system(size: 14,weight: .semibold, design: .monospaced))
                            .foregroundStyle(Color(red:235/255,green:235/255,blue:235/255))
                        
                    }
                    //.background(Color.yellow)
                    .padding(.horizontal,20)
                    .padding(.vertical,20)
                    
                })
                .frame(width: 165)
                .background(Color(red:247/255,green:82/255,blue:112/255))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red:208/255,green:9/255,blue:44/255),lineWidth: 5))
                
                HStack(spacing:20){
                    Button(action: {},
                           label:{
                        VStack(){
                            Image("grafico1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70)
                            
                            Text("Senadores")
                                .font(.system(size: 14,weight: .semibold, design: .monospaced))
                                .foregroundStyle(Color(red:235/255,green:235/255,blue:235/255))
                            
                        }
                        //.background(Color.yellow)
                        .padding(.horizontal,20)
                        .padding(.vertical,20)
                        
                    })
                    .frame(width: 165)
                    .background(Color(red:71/255,green:110/255,blue:174/255))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red:47/255,green:72/255,blue:114/255),lineWidth: 5))
                    
                    Button(action: {},
                           label:{
                        VStack(){
                            Image("grafico1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70)
                            
                            Text("Diputados")
                                .font(.system(size: 14,weight: .semibold, design: .monospaced))
                                .foregroundStyle(Color(red:235/255,green:235/255,blue:235/255))
                            
                        }
                        //.background(Color.yellow)
                        .padding(.horizontal,20)
                        .padding(.vertical,20)
                        
                    })
                    .frame(width: 165)                .background(Color(red:171/255,green:171/255,blue:171/255))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red:101/255,green:101/255,blue:101/255),lineWidth: 5))
                }
                Button(action: {},
                       label:{
                    VStack(){
                        Image("grafico1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                        
                        Text("Parlamento Andino")
                            .font(.system(size: 14,weight: .semibold, design: .monospaced))
                            .foregroundStyle(Color(red:47/255,green:72/255,blue:114/255))
                            .multilineTextAlignment(.center)
                        //.fixedSize(horizontal: false, vertical: true)
                    }
                    //.background(Color.yellow)
                    .padding(.horizontal,20)
                    .padding(.vertical,20)
                    
                })
                .frame(width: 165)
                .background(Color(red:147/255,green:171/255,blue:211/255))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red:47/255,green:72/255,blue:114/255),lineWidth: 5))
            }
        }
        .frame(maxHeight:.infinity,alignment: .top)
        //.background(Color.green)
    }
}

#Preview {
    ResultadosView()
}
