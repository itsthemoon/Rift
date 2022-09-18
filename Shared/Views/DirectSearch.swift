//
//  DirectSearch.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/15/22.
//

import SwiftUI

struct DirectSearch: View {
    
    var body: some View {
        VStack(spacing: 15.0) {
            
            Text("Trending")
                .multilineTextAlignment(.leading)
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(/*@START_MENU_TOKEN@*/0.4/*@END_MENU_TOKEN@*/)
            HStack {
            Button(action: {}){
                HStack{
                Text("Skirts")
                .font(.title2)
                .foregroundColor(Color.black)
                .padding(.all)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)

                    Image(systemName: "chevron.right")
                    .padding(.trailing, 15.0)
                    .foregroundColor(Color.black)
                }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 1)
                )
            }
            .padding(.horizontal)
            
            HStack {
            Button(action: {}){
                HStack{
                Text("Vintage Nike")
                .font(.title2)
                .foregroundColor(Color.black)
                .padding(.all)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)

                    Image(systemName: "chevron.right")
                    .padding(.trailing, 15.0)
                    .foregroundColor(Color.black)
                }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 1)
                )
            }
            .padding(.horizontal)
            
            HStack {
            Button(action: {}){
                HStack{
                Text("Blazer")
                .font(.title2)
                .foregroundColor(Color.black)
                .padding(.all)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)

                    Image(systemName: "chevron.right")
                    .padding(.trailing, 15.0)
                    .foregroundColor(Color.black)
                }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 1)
                )
            }
            .padding(.horizontal)
            
            Spacer()
        }
        }
    }


struct DirectSearch_Previews: PreviewProvider {
    static var previews: some View {
        DirectSearch()
    }
}
