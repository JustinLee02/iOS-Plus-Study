//
//  ContentView.swift
//  Learn
//
//  Created by 이수현 on 9/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search: String = ""
    @State private var friends: [String] = ["John", "Mary", "Steven", "Steve", "Jerry"]
    
    @State private var filterFriends: [String] = []
    
    var body: some View { // Re-evaluate
        VStack {
            List(filterFriends, id: \.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                if search.isEmpty {
                    filterFriends = friends
                } else {
                    filterFriends = friends.filter { $0.contains(search) }
                }
                
            }
            Spacer()
        }.padding()
            .onAppear(perform: {
                filterFriends = friends
            })
            .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
