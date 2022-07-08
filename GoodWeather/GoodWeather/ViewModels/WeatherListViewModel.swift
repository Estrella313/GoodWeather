//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation

class WeatherListViewModel {
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
    func updateUnit(to unit: Unit) {
        switch(unit) {
        case .celsius:
            toCelsius()
        case .fahrenheit:
            toFahrenheit()
        }
    }
    
    private func toCelsius() {
        weatherViewModels = weatherViewModels.map { vm in
            let weatherModel = vm
            weatherModel.tempeture = (weatherModel.tempeture - 32) * 5/9
            return weatherModel
        }
    }
    
    private func toFahrenheit() {
        weatherViewModels = weatherViewModels.map { vm in
            let weatherModel = vm
            weatherModel.tempeture = (weatherModel.tempeture * 9/5) + 32
            return weatherModel
        }
    }
}

class WeatherViewModel {
    let weather: WeatherResponse
    var tempeture: Double
    
    
    init(weather: WeatherResponse) {
        self.weather = weather
        self.tempeture = weather.main.temp
    }
    
    var city: String {
        return weather.name
    }
}
