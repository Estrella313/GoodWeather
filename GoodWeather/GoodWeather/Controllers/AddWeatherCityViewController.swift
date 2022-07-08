//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    @IBOutlet weak var cityNameTxt: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    var delegate: AddWeatherDelegate?
    
    @IBAction func saveCityBtnPressed() {
        if let city = cityNameTxt.text {
            addWeatherVM.addWeather(for: city) { vm in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func closeBtnPressed() {
        self.dismiss(animated: true, completion: nil)
    }
}


protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}
