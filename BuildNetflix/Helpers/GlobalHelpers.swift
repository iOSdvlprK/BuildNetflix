//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/25.
//

import SwiftUI

//let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")
let exampleVideoURL = URL(string: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/360/Big_Buck_Bunny_360_10s_5MB.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(name: "Beginnings and Endings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/112",
                       description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/111",
                       description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/110",
                       description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 56,
                       videoURL: exampleVideoURL)

let episode4 = Episode(name: "Beginnings and Endings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/109",
                       description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/108",
                       description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/107",
                       description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 56,
                       videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleMovie1 = Movie(
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    accentColor: Color.blue,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers,
    previewImageName: "darkPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie2 = Movie(
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers,
    previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie3 = Movie(
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImageName: "dirtyJohnPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie4 = Movie(
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers,
    previewImageName: "travelersPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie5 = Movie(
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImageName: "arrestedDevPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie6 = Movie(
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers,
    previewImageName: "whiteLinesPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie7 = Movie(
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers,
    previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)

let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "Dark Matter", description: "Clause and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.", season: 2, episode: 2)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        colors: [.black.opacity(0.0), .black.opacity(0.95)],
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension View {
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    /// ```
    /// Text("Label")
    ///     .isHidden(true)
    /// ```
    ///
    /// Example for complete removal:
    /// ```
    /// Text("Label")
    ///     .isHidden(true, remove: true)
    /// ```
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
