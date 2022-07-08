//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var cityNameLbl: UILabel!
    @IBOutlet weak var temperatureLbl: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLbl?.text = vm.city
        self.temperatureLbl?.text = "\(vm.tempeture.formatAsDegree())"
    }
}
