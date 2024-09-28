//
//  Weather.swift
//  OpenWeather
//
//  Created by 이수현 on 9/28/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
