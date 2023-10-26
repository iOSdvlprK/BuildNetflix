//
//  Movie.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/25.
//

import Foundation

struct Movie: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
