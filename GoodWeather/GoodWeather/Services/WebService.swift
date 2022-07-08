//
//  WebService.swift
//  GoodWeather
//
//  Created by BRM13259 on 07/07/22.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) ->T?
}

final class WebServices {
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()) {
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            print(data)
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
