//
//  Trailer.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/30.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
