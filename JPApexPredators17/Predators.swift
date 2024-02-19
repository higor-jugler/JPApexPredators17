//
//  Predators.swift
//  JPApexPredators17
//
//  Created by Higor Jugler on 2/18/24.
//

import Foundation

class Predators {
    var apexPredators: [ApexPredators] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredators].self, from: data)
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        }
    }
}
