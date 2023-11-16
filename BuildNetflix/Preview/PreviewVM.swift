//
//  PreviewVM.swift
//  BuildNetflix
//
//  Created by joe on 2023/11/15.
//

import Foundation

class PreviewVM: ObservableObject {
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
