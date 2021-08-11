//
//  CategoryModel.swift
//  Touchdown
//
//  Created by PremierSoft on 10/08/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name, image: String
}
