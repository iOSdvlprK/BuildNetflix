//
//  HomeVM.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/25.
//

import Foundation

class HomeVM: ObservableObject {
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(for category: String, andHomeRow homeRow: HomeTopRow) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[category] ?? []
        case .movies:
            return (movies[category] ?? []).filter({ $0.movieType == .movie })
        case .tvShows:
            return (movies[category] ?? []).filter({ $0.movieType == .tvShow })
        case .myList:
            return movies[category] ?? []
            // TODO: setup myList properly
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
