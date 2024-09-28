//
//  ContentView.swift
//  LearnBinding
//
//  Created by 이수현 on 9/27/24.
//

import SwiftUI
import Observation

//Pre iOs-17
//class AppState: ObservableObject {
//    @Published var isOn = false
//    
//}

@Observable
class AppState: ObservableObject {
    var isOn: Bool = false
}

struct LightBulbView: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        
        @Bindable var appState = appState
        VStack {
            Image(systemName: "lightbulb.fill")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow: .black)
//            Button("Toggle") {
//                appState.isOn.toggle()
//            }
            Toggle("IsON", isOn: $appState.isOn)
        }
    }
}

struct LightRoomView: View {
    
    var body: some View {
        LightBulbView()
    }
}

struct ContentView: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .red : .white)
    }
}

#Preview {
    ContentView()
        //.environmentObject(AppState())
        .environment(AppState())
}
