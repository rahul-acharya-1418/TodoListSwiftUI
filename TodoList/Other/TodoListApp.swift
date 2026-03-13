//
//  TodoListApp.swift
//  TodoList
//
//  Created by Rahul Acharya on 06/02/26.
//

import SwiftUI
import FirebaseCore

@main
struct TodoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
