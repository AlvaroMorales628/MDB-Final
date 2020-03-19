//
//  APIResponse.swift
//  FinalExam
//
//  Created by Anmol Parande on 3/15/20.
//  Copyright © 2020 Anmol Parande. All rights reserved.
//

import Foundation

/**
 A class which stores data retreived from the Corona API
 */
class APIResponse: Decodable {
    // Part 1B
    let provinces: CoronaData
        
        enum CodingKeys: String, CodingKey {
            case provinces
        }
        
        enum DataKeys: String, CodingKey {
            case error, statusCode, message
        }
        
        required init(from decoder: Decoder) throws {
            let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
            
            provinces = try valueContainer.decode(ProvinceData, forKey: .data.covid19Stats)
            
    //        let currentlyContainer = try valueContainer.nestedContainer(keyedBy: DataKeys.self, forKey: .currently)
    //
    //        currently = try currentlyContainer.decode(Weather.self, forKey: DataKeys.temperature)
        }
}
