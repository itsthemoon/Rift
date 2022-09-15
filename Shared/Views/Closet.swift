//
//  Closet.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Closet: View {
    
    var body: some View {
        ScrollView (showsIndicators: false){
            ForEach(0 ..< 5) {item in
                ClosetView()
            }
        }
    }
struct Closet_Previews: PreviewProvider {
    static var previews: some View {
        Closet()
    }
}

struct ClosetView: View {
    // need to pass in prop for naming closets
    var body: some View {
        Text("Example Closet")
            .font(.title)
            .fontWeight(.bold)
            .padding(.vertical)
        // Items
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< 8) {item in
                    ItemCard()
                }
            }
        }
    }
}
}
