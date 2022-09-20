//
//  Home.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI
import SnapToScroll

struct Home: View {
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        let screenSize: CGFloat = UIScreen.main.bounds.width
        
        //access phone screen size/2 instead of 215
        let x = abs((screenSize * 0.5) - proxy.frame(in: .global).midX)
    
        if x < 100  {
            scale = 1 + (100 - x) / 500
        }
        
        return scale
    }
    
    var body: some View {
        VStack {
            ScrollView (showsIndicators: false){
                CountdownView()
                
                // Cart
                Text("My Rift")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Items
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(0 ..< 30) { num in
                                Image("screenshot")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(20)
                                    .clipped()
                                    .frame(width: 300, height: 400)
                        }
                    }
                    .padding(32)
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
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .padding([.leading, .bottom, .trailing])
                Spacer()
            }
            
            Divider()
        }
    }
}

