//
//  ComingSoonVM.swift
//  BuildNetflix
//
//  Created by joe on 2023/11/11.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}

