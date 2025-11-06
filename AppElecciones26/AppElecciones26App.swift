//
//  AppElecciones26App.swift
//  AppElecciones26
//
//  Created by user278624 on 10/15/25.
//

import SwiftUI


@main
struct AppElecciones26App: App {
    
    @StateObject public var objViewModel = CoreDataViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, objViewModel.container.viewContext)
                .environmentObject(objViewModel)
    
        }
    }
}
