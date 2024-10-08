//
//  ContentView.swift
//  OpenWeather
//
//  Created by 이수현 on 9/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Get Coordinates") {
                Task {
                    let geocoding = GeoCodingClient()
                    let weatherClient = WeatherClient()
                    let location = try! await geocoding.coordinateByCity("Houston")
                    let weather = try! await weatherClient.fetchWeather(location: location!)
                    print(weather)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
