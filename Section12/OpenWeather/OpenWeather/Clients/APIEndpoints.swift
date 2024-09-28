//
//  APIEndpoints.swift
//  OpenWeather
//
//  Created by 이수현 on 9/28/24.
//

import Foundation

enum APIEndpoints {
    static let baseURL = "https://api.openweathermap.org"
    
    case coordinatesByLocationName(String)
    case weatherByCoordinates(Double, Double)
    
    private var path: String {
        switch self {
        case .coordinatesByLocationName(let locationName):
            return "/geo/1.0/direct?q=\(locationName)&appid=\(Constants.Keys.weatherAPIKey)"
            
        case .weatherByCoordinates(let lat, let lon):
            return "/data/2.5/onecall?lat=\(lat)&lon=\(lon)&appid=\(Constants.Keys.weatherAPIKey)"
            
        }
    }
    
    static func endPointURL(for endpoint: APIEndpoints) -> URL {
        let endPointPath = endpoint.path
        return URL(string: baseURL + endPointPath)!
    }
}
