//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f", self)
    }
}
