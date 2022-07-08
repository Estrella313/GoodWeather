//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
