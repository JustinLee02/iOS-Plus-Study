//
//  LearnBindingApp.swift
//  LearnBinding
//
//  Created by 이수현 on 9/27/24.
//

import SwiftUI

@main
struct LearnBindingApp: App {
    
    @State private var appState: AppState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
    }
}
