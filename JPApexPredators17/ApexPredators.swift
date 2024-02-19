//
//  ApexPredators.swift
//  JPApexPredators17
//
//  Created by Higor Jugler on 2/17/24.
//

import Foundation
import SwiftUI

struct ApexPredators: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: PredatorType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScenes]
    let link: String
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "")
    }
    
    struct MovieScenes: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
    
    enum PredatorType: String, Decodable {
        case land
        case air
        case sea
        
        var background: Color {
            switch self {
            case .land: .brown
            case .air:  .teal
            case .sea:  .blue
            }
        }
    }
}
