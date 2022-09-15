//
//  Home.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView (showsIndicators: false){
            CountdownView()
            
            // Cart
            Text("My Rift")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Items
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 8) {item in
                        CartItemView()
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct CartItemView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .frame(width: 300, height: 400)
            .padding(.horizontal)
    }
}

struct CountdownView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 16.0) {
            HStack {
                Text("11")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding([.top, .leading])
                Text("Days")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.top)
            }
            HStack {
                Text("8")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding([.leading])
                Text("Hours")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            HStack {
                Text("12")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding([.leading])
                Text("Minutes")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            HStack {
                Spacer()
                Button(action: {}){
                    Text("Schedule Return")
                        .font(.title2)
                        .bold()
                        .padding(12)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(20)
                }
                .padding([.leading, .bottom, .trailing])
                Spacer()
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: 325,
            minHeight: 0,
            maxHeight: 350,
            alignment: .topLeading
        )
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.805)/*@END_MENU_TOKEN@*/)
        .cornerRadius(12.0)
        .padding(.all)
    }
}
