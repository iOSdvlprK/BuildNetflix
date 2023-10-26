//
//  TopMoviePreview.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/26.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ category: String) -> Bool {
        let categoryCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != categoryCount {
                return false
            }
        }
        
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                Text("Row of buttons")
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
