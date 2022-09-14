//
//  Account.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Account: View {
    var prevPage: String?
    @State var exit = false
    
    var body: some View {
        if !exit {
        VStack {
            ZStack {
                HStack {
                    Button(action: {exit = true
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
            

        ScrollView {
            VStack {
                Text("Current Balance")
                    .font(.title)
                .fontWeight(.bold)
                VStack {
                    Spacer()
                    HStack{
                        VStack {
                            Text("10")
                                .font(.largeTitle)
                            .fontWeight(.bold)
                            Text("credits")
                                .fontWeight(.bold)
                            Spacer()
                        }
                    }
                    .frame(width: 100, height: 100)
                }
                .padding()
                .background(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
                .frame(width: 120, height: 120)
                .cornerRadius(10.0)
            }
        }
    }
        } else {
            switch prevPage {
            case "Home":
                Home()
            case "Search":
                Search()
            case "Closet":
                Closet()
            default:
                Account()
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
        }
    }
}
