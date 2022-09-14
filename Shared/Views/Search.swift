//
//  Search.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/12/22.
//

import SwiftUI

struct Search: View {
    @State var showAccount = false
    
    var body: some View {
        if showAccount {
            Account(prevPage: "Search")
        } else {
        VStack {
            ZStack {
                HStack {
                    Image(systemName: "shippingbox")
                        .padding(.leading, 15.0)
                    Spacer()
                }
                HStack {
                    Text("Browse")
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
            Color.blue
         }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
}
