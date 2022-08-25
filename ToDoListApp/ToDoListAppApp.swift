//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by pavel on 24.08.22.
//

import SwiftUI

@main
struct ToDoListAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
