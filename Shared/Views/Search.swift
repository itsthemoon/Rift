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
            Image("screenshot2")
                .resizable()
                .scaledToFill()
                .overlay(
                    Text("Categories")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .foregroundColor(Color.white)
                )
            
            // Items
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 8) {item in
                        CategoryCard()
                    }
                }
            }
            Divider()
            Image("screenshot2")
                .resizable()
                .scaledToFit()
                .overlay(
                    Text("Pick For You")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .foregroundColor(Color.white)
                )
            
            // Items
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 8) {item in
                        ItemCard()
                    }
                }
            }
            Divider()
            Image("screenshot2")
                .resizable()
                .scaledToFit()
                .overlay(
                    Text("Collections")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .foregroundColor(Color.white)
                )
            
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
    }
}

struct ItemCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .frame(width: 200, height: 280)
    }
}

struct CollectionCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .frame(width: 300, height: 300)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

