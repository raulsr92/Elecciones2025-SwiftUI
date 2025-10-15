//
//  CandidatosView.swift
//  AppElecciones26
//
//  Created by user278624 on 10/15/25.
//

import SwiftUI

struct CandidatosView: View {
    @State private var searchText = ""
    
    //Modelo Partidos
    struct PartidoItem:Identifiable{
        let id = UUID()
        let name: String
        let candidato:String
        let imagePartido: String
        let imageCandidato: String
    }
    
    //Modelo Ejes
    
    struct EjeItem:Identifiable{
        let id = UUID()
        let name: String
        let imageEje: String

    }
    
    //Array de partidos en base a modelo PartidoItem
    let partidos: [PartidoItem] = [
        PartidoItem(name:"Pais para todos",candidato: "Carlos Alvarez", imagePartido: "partido1", imageCandidato: "candidato1"),
        PartidoItem(name:"Renovacion Popular",candidato: "Rafael Lopez Aliaga", imagePartido: "partido2", imageCandidato: "candidato2"),
        PartidoItem(name:"Peru Primero",candidato: "Mario Vizcarra", imagePartido: "partido3", imageCandidato: "candidato3"),
        PartidoItem(name:"Ahora Accion",candidato: "Alfonso Lopez Chau", imagePartido: "partido4", imageCandidato: "candidato4"),
        PartidoItem(name:"Accion para el Progreso",candidato: "Cesar Acuña", imagePartido: "partido5", imageCandidato: "candidato5"),
        PartidoItem(name:"Cooperacion Popular",candidato: "Yonhy Lescano", imagePartido: "partido6", imageCandidato: "candidato6"),
        PartidoItem(name:"Avanza pais",candidato: "Phillip Butters", imagePartido: "partido7", imageCandidato: "candidato7"),
        PartidoItem(name:"Libertad Popular",candidato: "Rafael Belaunde", imagePartido: "partido8", imageCandidato: "candidato8"),
        PartidoItem(name:"Accion Popular",candidato: "Victor Garcia Belande", imagePartido: "partido9", imageCandidato: "candidato9"),
        PartidoItem(name:"Juntos por el Peru",candidato: "Desconocido", imagePartido: "partido10", imageCandidato: "candidato10"),
        PartidoItem(name:"Partido Morado",candidato: "Desconocido", imagePartido: "partido11", imageCandidato: "candidato11"),
        PartidoItem(name:"Podemos Peru",candidato: "Jose Luna", imagePartido: "partido12", imageCandidato: "candidato12")
    ]
    
    
    //Array Filtrado
    
    var filteredPartidos: [PartidoItem]{
        if searchText.isEmpty{
            return partidos
        } else{
            return partidos.filter{
                $0.candidato.localizedCaseInsensitiveContains(searchText)
            }
            
        }
    }
    
    //Array de Ejes en base a modelo
    
    let ejes: [EjeItem] = [
        EjeItem(name: "Salud", imageEje: "eje1"),
        EjeItem(name: "Educacion", imageEje: "eje2"),
        EjeItem(name: "Tecnologia", imageEje: "eje3"),
        EjeItem(name: "Vial", imageEje: "eje4"),
        EjeItem(name: "Telecomunicaciones", imageEje: "eje5"),
        EjeItem(name: "Economia", imageEje: "eje6"),
        EjeItem(name: "Medio Ambiente", imageEje: "eje7"),
        EjeItem(name: "Seguridad", imageEje: "eje8"),
        EjeItem(name: "Empleo", imageEje: "eje9")
    ]
        
    let columns = Array(repeating: GridItem(.flexible()), count: 3)
    
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
            Text("Candidatos Presidenciales")
                .font(.system(size: 20,weight: .semibold, design: .monospaced))
                .foregroundStyle(Color(red:71/255,green:110/255,blue:174/255))
                //.background(Color.blue)
            
            NavigationStack{
                ScrollView {
                    LazyVGrid(columns: columns,spacing: 15){
                        ForEach(filteredPartidos){ partido in
                            VStack(alignment:.center, spacing:14){
                                Image(partido.imageCandidato)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 90, height:90)
                                    .clipShape(Circle())
                                    .overlay(Circle()
                                        .stroke(Color(red:71/255,green:110/255,blue:174/255),lineWidth:3))
                                                                        
                                    //.background(Color.red)
                                Text(partido.candidato)
                                    //.multilineTextAlignment(.center)
                                    .font(.system(size: 11,weight: .regular, design: .monospaced))
                                    .frame( maxWidth: .infinity,alignment:.center)
                                    .multilineTextAlignment(.center)
                                    .fixedSize(horizontal: false, vertical: true)
                                    //.background(Color.blue)
                                
                            }
                            
                            .frame(width:90,height:100,alignment:.center)
                            .padding(.horizontal,10)
                            .padding(.vertical,20)
                            //.background(Color.red)
                            
                            //.background(Color(red:250/255, green:243/255,blue:183/255))
                            /*.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red:71/255,green:110/255,blue:174/255),lineWidth:2))
                            */
                        }
                    }.padding(.horizontal,14)
                }
                //.navigationTitle("Partidos Politicos")
            }
            .searchable(text: $searchText,prompt: "Buscar Partidos Politicos")
            //.padding(.vertical,20)
            
        }
        
        
        
        
    }
}

#Preview {
    CandidatosView()
}
