//
//  Movie.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/25.
//

import Foundation

struct Movie: Identifiable, Equatable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name && lhs.thumbnailURL == rhs.thumbnailURL && lhs.categories == rhs.categories && lhs.year == rhs.year && lhs.rating == rhs.rating && lhs.numberOfSeasons == rhs.numberOfSeasons && lhs.currentEpisode == rhs.currentEpisode && lhs.defaultEpisodeInfo == rhs.defaultEpisodeInfo && lhs.creators == rhs.creators && lhs.cast == rhs.cast && lhs.moreLikeThisMovies == rhs.moreLikeThisMovies && lhs.episodes == rhs.episodes && lhs.promotionHeadline == rhs.promotionHeadline && lhs.trailers == rhs.trailers
    }
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
