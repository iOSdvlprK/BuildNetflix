//
//  SearchBar.swift
//  BuildNetflix
//
//  Created by joe on 2023/11/06.
//

import SwiftUI

struct SearchBar: View {
    @State private var text = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 330, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
//                    .padding(.horizontal, 10)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
                Button(action: {
                    // clear text
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.graySearchText)
                        .frame(width: 35, height: 35)
                })
                .padding(.trailing, 18)
                
                Button(action: {
                    // clear text, hide both buttons, give up first-responder
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SearchBar()
                .padding()
        }
    }
}