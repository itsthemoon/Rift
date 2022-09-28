
//
//  searchResults.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/18/22.
//

import SwiftUI

struct SearchResults: View {
    @EnvironmentObject var searchingstatus: AreWeSearching

    var body: some View {
        fakeCard()
    }
}

struct fakeCard: View {
    var body: some View {
        ScrollView (showsIndicators: true){

        VStack {
            Text("145 Results")
                .padding(.bottom)
                .opacity(0.4)
                .font(.footnote)
            HStack(spacing: 0.0) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
            }
            .padding(.bottom)
            
            HStack(spacing: 0.0) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
            }
            .padding(.bottom)
            
            HStack(spacing: 0.0) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
            }
            .padding(.bottom)
            
            HStack(spacing: 0.0) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
            }
            .padding(.bottom)
            
            HStack(spacing: 0.0) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                    .frame(width: 165, height: 165)
                    .padding(.horizontal)
            }
            .padding(.bottom)
            
            
        Spacer()
        }
        } .safeAreaInset(edge: .bottom) {
            FilterSortButton()
        }
        
    }
}

struct SearchResults_Previews: PreviewProvider {
    static var previews: some View {
        SearchResults()
    }
}
