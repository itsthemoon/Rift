//
//  ContentView.swift
//  Shared
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    @State var prevView = ""
    @State var accountShowing = false
    
    let tabBarImageNames = ["shippingbox", "magnifyingglass", "tshirt"]
    
    var body: some View {
        VStack {
            if !accountShowing {
            ZStack {
                HStack {
                    Image(systemName: "shippingbox")
                        .padding(.leading, 15.0)
                    Spacer()
                }
                HStack {
                    switch selectedIndex {
                    case 0:
                        Text("Home")
                    case 1:
                        Text("Search")
                    case 2:
                        Text("Closet")
                    default:
                        Text("Remaining tabs")
                    }
                }
                HStack {
                    Spacer()
                        Button(action: {
                            switch selectedIndex {
                            case 0:
                                accountShowing = true
                                prevView = "Home"
                                selectedIndex = 3
                            case 1:
                                accountShowing = true
                                prevView = "Search"
                                selectedIndex = 3
                            case 2:
                                accountShowing = true
                                prevView = "Closet"
                                selectedIndex = 3
                            default:
                                prevView = ""
                            }
                        }){
                            // Button design
                            Image(systemName: "person")
                                .padding(.trailing, 15.0)
                                .foregroundColor(Color.black)
                            }
                        }
                    }
            } else {
                ZStack {
                    HStack {
                        Button(action: {
                            switch prevView {
                            case "Home":
                                selectedIndex = 0
                                accountShowing = false
                            case "Search":
                                selectedIndex = 1
                                accountShowing = false
                            case "Closet":
                                selectedIndex = 2
                                accountShowing = false
                            default:
                                selectedIndex = 0
                                accountShowing = false
                            }
                        }){
                        Image(systemName: "xmark")
                            .padding(.leading, 15.0)
                            .foregroundColor(Color.black)

                        Spacer()
                        }
                    }
                    HStack {
                        Text("My Account")
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            ZStack {
                switch selectedIndex {
                case 0:
                    Home()
                case 1:
                    Search()
                case 2:
                    Closet()
                case 3:
                    Account(prevPage: prevView)
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
            .opacity(accountShowing ? 0: 1)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
