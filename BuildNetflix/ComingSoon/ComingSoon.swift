//
//  ComingSoon.swift
//  BuildNetflix
//
//  Created by joe on 2023/11/10.
//

import SwiftUI

struct ComingSoon: View {
    var body: some View {
        NavigationStack {
            Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView {
                        VStack {
                            NavigationLink(destination: {
                                Text("Notification List")
                            }, label: {
                                notificationBar
                            })
                            
                            Text("ForEach loop of cells")
                        }
                    }
                    .foregroundColor(.white)
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
