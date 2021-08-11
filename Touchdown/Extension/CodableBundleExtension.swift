//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by PremierSoft on 10/08/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file in bundle.")
        }
        
        //2. Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file to bundle.")
        }
        
        //3. Create a decode
        let decoder = JSONDecoder()
        
        //4. create a property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        //5. return the ready-to-use data
        return decodedData
    }
}
