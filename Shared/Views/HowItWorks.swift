//
//  HowItWorks.swift
//  Rift (iOS)
//
//  Created by William Belfor on 9/15/22.
//

import SwiftUI

struct HowItWorks: View {
    var prevPage: String?
    @State var exit = false
        
    var body: some View {
        VStack {
        ScrollView {
            Text("How It Works")
                .font(.title)
                .fontWeight(.bold)
            VStack {
                Spacer(minLength: 50)
                Text("$ -> Credits")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("After choosing a plan, you will receive credits to Rift clothes you love.")
                    .font(.headline)
                    .foregroundColor(Color.black)
                    .padding()
            }
            
            
        }
    }
}

struct HowItWorks_Previews: PreviewProvider {
    static var previews: some View {
        HowItWorks()
        }
    }
}
