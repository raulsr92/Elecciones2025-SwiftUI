//
//  MainView.swift
//  AppElecciones26
//
//  Created by user278624 on 10/15/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            PlaceholderView(title: "Inicio")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Inicio")
                }
                .tag(0)
            
            PlaceholderView(title: "Favoritos")
                .tabItem {
                    Image(systemName: "star")
                    Text("Favoritos")
                }
                .tag(1)
            
            ContentView()
                .tabItem {
                    Image(systemName: "flag")
                    Text("Partidos")
                }
                .tag(2)
            
            PlaceholderView(title: "Results")                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Resultados")
                }
                .tag(3)
        }
        .background(Color.red)
    }
}

#Preview {
    MainView()
}
