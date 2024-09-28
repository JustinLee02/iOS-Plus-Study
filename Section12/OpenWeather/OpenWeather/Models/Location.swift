//
//  Location.swift
//  OpenWeather
//
//  Created by 이수현 on 9/28/24.
//

import Foundation

struct Location: Decodable {
    let name: String
    let lat: Double
    let lon: Double
}
