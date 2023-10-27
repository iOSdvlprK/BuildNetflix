//
//  HomeView.swift
//  BuildNetflix
//
//  Created by joe on 2023/10/25.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -123)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(for: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
//                        .buttonStyle(PlainButtonStyle())
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("My List")
            })
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
