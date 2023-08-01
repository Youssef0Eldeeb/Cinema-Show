//
//  TrailerModel.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 29/07/2023.
//

import Foundation

struct TrailerModel: Codable, Identifiable{
    var id: String
    var name: String
    var headline: String
    
    var thumbnail: String{
        return "thumb-\(id)"
    }
}
