//
//  ContentView.swift
//  Hiking
//
//  Created by 이수현 on 9/27/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [ Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
                  Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
                  Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in // NavigationLinke의 Value와 동일한 자료형을 for: 에 제공해야함 
                    HikeDetailScreen(hike: hike)
                }
        }
        
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                .frame(width: 75)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
            
        }
    }
}
