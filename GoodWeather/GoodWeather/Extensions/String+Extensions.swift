//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
