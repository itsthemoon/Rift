//
//  ContentView.swift
//  Shared
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    
    let tabBarImageNames = ["shippingbox", "magnifyingglass", "tshirt"]
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    Home()
                case 1:
                    Search()
                case 2:
                    Closet()
                case 3:
                    Account()
                default:
                    Text("Remaining tabs")
                }
            }
            Spacer()
            HStack {
            ForEach(0..<3) { num in
                Button(action: {
                    selectedIndex = num
                }, label: {
                    Spacer()
                    Image(systemName: tabBarImageNames[num])
                        .foregroundColor(selectedIndex == num ? Color(.label) : .init(white: 0.8))
                        .font(.system(size: 24))
                    Spacer()
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
