//
//  DogAPI.swift
//  Network-API_Randog
//
//  Created by Flow Lab on 2/11/20.
//  Copyright © 2020 Flow Lab. All rights reserved.
//

import Foundation

class DogAPI{
    enum Endpoint: String {
        case randomImageFromAllDogsCollection = "https://dog.ceo/api/breeds/image/random"
        
        var url: URL{
            return URL(string: self.rawValue)!
        }
        
    }
}
