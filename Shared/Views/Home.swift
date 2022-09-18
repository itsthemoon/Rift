//
//  Home.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Home: View {
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        let screenSize: CGFloat = UIScreen.main.bounds.width
        
        //access phone screen size/2 oinstead of 215
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
                NavigationView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 64) {
                            ForEach(0 ..< 30) { num in
                                GeometryReader { proxy in
                                    
                                    let scale = getScale(proxy: proxy)
                                    
                                    Image("screenshot")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(20)
                                        .clipped()
                                        .scaleEffect(CGSize(width: scale, height: scale))
                                    let x = abs(215 - proxy.frame(in: .global).midX)
                                }
                                .frame(width: 250, height: 300)
                            }
                        }
                        .padding(32)
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

