//
//  ComingSoon.swift
//  BuildNetflix
//
//  Created by joe on 2023/11/10.
//

import SwiftUI

struct ComingSoon: View {
    @State private var movieDetailToShow: Movie?
    
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex = 0
//    @State private var isAnimating = false
    
    @ObservedObject var vm = ComingSoonVM()
    
    func updateActiveIndex(fromScroll scroll: CGFloat) {
        if scroll < 80 {
            activeIndex = 0
        } else {
            let remove105 = scroll - 80
            
            let active = Int(remove105 / 440) + 1
            activeIndex = Int(active)
        }
    }
    
    var body: some View {
        let movies = vm.movies.enumerated().map({ $0 })
        
        let scrollTrackingBinding = Binding(get: {
            return scrollOffset
        }, set: { newVal in
            scrollOffset = newVal
            updateActiveIndex(fromScroll: newVal)
        })
        
        return NavigationStack {
            Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    
                    TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding) {
                        LazyVStack {
                            NavigationLink(destination: {
                                Text("Notification List")
                            }, label: {
                                notificationBar
                            })
                            
                            ForEach(movies, id: \.offset) { index, movie in
                                ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height: 430)
                                    .overlay {
                                         Group {
                                             index == activeIndex ? Color.clear : Color.black.opacity(0.8)
                                         }
                                         .animation(.easeInOut)
//                                         .animation(.easeInOut, value: isAnimating)
                                    }
                                    /* // animation not working #2
                                    .onChange(of: activeIndex) { _ in
                                        isAnimating.toggle()
                                    }
                                    */
                                    /* // animation not working #1
                                    .onAppear {
                                        if index == activeIndex {
                                            isAnimating.toggle()
                                        }
                                    }
                                    */
                            }
                        }
                    }
                    .foregroundColor(.white)
                    
                    /*
                    Text("\(scrollOffset)")
                        .padding()
                        .background(Color.red)
                    */
                }
            }
            .navigationTitle("")
            .toolbar(.hidden)
        }
    }
    
    private var notificationBar: some View {
        HStack {
            Image(systemName: "bell")
            Text("Notifications")
            Spacer()
            Image(systemName: "chevron.right")
        }
        .font(.system(size: 18, weight: .bold))
        .foregroundColor(.white)
        .padding()
    }
}

struct ComingSoon_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoon()
    }
}
