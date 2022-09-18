//
//  Search.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Search: View {
    
    var body: some View {
        
        ScrollView (showsIndicators: false){
            Text("Categories")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical)
            
            // Items
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 8) {item in
                        CategoryCard()
                    }
                }
            }
            Text("Pick For You")
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
            Text("Collections")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical)
            
            // Items
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 8) {item in
                        CollectionCard()
                    }
                }
            }
        }

    }
}

struct CategoryCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .frame(width: 250, height: 250)
            .padding(.horizontal)
    }
}

struct ItemCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .frame(width: 200, height: 280)
            .padding(.horizontal)
    }
}

struct CollectionCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .frame(width: 300, height: 300)
            .padding(.horizontal)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

