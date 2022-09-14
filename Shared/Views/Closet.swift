//
//  Closet.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Closet: View {
    @State var showAccount = false

    var body: some View {
        if showAccount {
            Account(prevPage: "Closet")
        } else {
        VStack {
            ZStack {
                HStack {
                    Image(systemName: "shippingbox")
                        .padding(.leading, 15.0)
                    Spacer()
                }
                HStack {
                    Text("My Closet")
                }
                HStack {
                    Spacer()
                    Button(action: {self.showAccount = true
                    }){
                        // Button design
                    Image(systemName: "person")
                        .padding(.trailing, 15.0)
                        .foregroundColor(Color.black)

                    }
                }
            }
            
            ZStack {
                Color.green
             }
        }
        }

    }
}

struct Closet_Previews: PreviewProvider {
    static var previews: some View {
        Closet()
    }
}
