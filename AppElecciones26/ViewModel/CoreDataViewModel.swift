//
//  CoreDataViewModel.swift
//  AppElecciones26
//
//  Created by user278624 on 11/5/25.
//

import Foundation
import CoreData

class CoreDataViewModel: ObservableObject{
    
    //1. Conectarnos a la BD
        
    let container = NSPersistentContainer(name: "Elecciones2026Model")
    
    var context: NSManagedObjectContext{
        container.viewContext
    }
    
    //2. Inicializar la BD
    
    init(){
        container.loadPersistentStores{desc, error in
            if let error = error{
                print("error al inicializar BD  \(error.localizedDescription)")
            
            }
                print("Base de datos Conectada!:) Peru")
            
        }
    }
    
    //3. Metodos
    
    func createCandidato(_ nombres:String,_ apellidos:String,_ foto:String,_ context: NSManagedObjectContext){
        
        let candidato = Candidato(context: context)
        candidato.idCandidato = UUID()
        candidato.nombres = nombres
        candidato.apellidos = apellidos
        candidato.foto = foto
        candidato.favorito = false
        
        guardar(context: context)
    }
    
    func editCandidato(){
        
    }
    
    func deleteCandidato(){
        
    }
    
    func favorito(){
        
    }
    
    func guardar(context: NSManagedObjectContext){
        
        do{
            try context.save()
            print("Registro añadido")
        }catch{
            print("Error al registrar candidato \(error.localizedDescription)")
        }
        
    }
    
}
