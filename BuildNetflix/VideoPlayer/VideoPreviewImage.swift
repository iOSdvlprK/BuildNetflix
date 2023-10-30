//
//  VideoPreviewImage.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/30.
//

import SwiftUI
import Kingfisher
import WebKit
//import YouTubePlayerKit

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer) {
                // 1)
                SwiftUIVideoView(url: videoURL)
                
                // two ways below to play Youtube
                
                // 2) https://github.com/SvenTiigi/YouTubePlayerKit
//                YouTubePlayerView(YouTubePlayer(source: .video(id: "YE7VzlLtp-4"), configuration: .init(autoPlay: true)))
                
                // This is better than 2)'s YouTubePlayerKit library
                // 3) https://stackoverflow.com/a/72658808/4999901
//                YoutubeVideoView(youtubeVideoID: "YE7VzlLtp-4")
                    
            }
        }
    }
}

/* // 3) https://stackoverflow.com/a/72658808/4999901
struct YoutubeVideoView: UIViewRepresentable {
    var youtubeVideoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
        guard let url = URL(string: path) else { return }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
}
*/

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
    }
}
