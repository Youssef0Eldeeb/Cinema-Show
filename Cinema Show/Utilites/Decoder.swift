//
//  Decoder.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 29/07/2023.
//

import SwiftUI

func decode<T: Codable>(file: String) -> T {
    guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
        fatalError("Fail to locate the file")
    }
    guard let data = try? Data(contentsOf: url) else{
        fatalError("Fail to load the data")
    }
    let decoder = JSONDecoder()
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
        fatalError("Fail to decode the file")
    }
    return decodedData
}
