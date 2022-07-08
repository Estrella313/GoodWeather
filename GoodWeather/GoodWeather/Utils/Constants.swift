//
//  Constants.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation

struct Constants {
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            let urlDefaults = UserDefaults.standard
            let unit = (UserDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&APPID=0946a232576447f847dc52a213688947ea&units=\(unit)")!
        }
    }
}
