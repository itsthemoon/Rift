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
        VStack {
        ScrollView {
            VStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("Current Balance")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    VStack(spacing: 20) {
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
                Spacer()
                    .padding(.vertical)
                NavigationView{
                    Form{
                        Section(header: Text("Help & Support")){
                            Button("How It Works") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            
                            Button("Previous Orders") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            
                            Button("My Subscription") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            
                            Button("FAQs") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            
                            Button("Contact Us") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            
                            Button("Legal + Privacy") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .padding(.top)
            }
            Button("Sign Out") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .background(Color(hue: 0.866, saturation: 0.0, brightness: 0.806))
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
        }
        .background(Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9647058823529412))
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
        }
    }
}
