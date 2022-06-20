//
//  CocktailAppApp.swift
//  CocktailApp
//
//  Created by Vytenis Petrauskas on 2022-06-20.
//

import SwiftUI

@main
struct CocktailAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
