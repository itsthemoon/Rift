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
                Image("open-box")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.vertical)
                    .frame(width: 300.0, height: 300.0)
                Text("After choosing a plan, you will receive credits to Rift clothes you love.")
                    .font(.headline)
                    .foregroundColor(Color.black)
                    .padding()
            }
            .background(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .cornerRadius(20)
            
            
        }
    }
}

struct HowItWorks_Previews: PreviewProvider {
    static var previews: some View {
        HowItWorks()
        }
    }
}
