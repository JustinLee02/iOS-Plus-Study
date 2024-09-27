//
//  Hike.swift
//  Hiking
//
//  Created by 이수현 on 9/27/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
