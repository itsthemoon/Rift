//
//  SwiftUIView.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/15/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @EnvironmentObject var searchingstatus: AreWeSearching
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("LightGrey"))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text: $searchingstatus.searchingText) { startedEditing in
                     if startedEditing {
                         withAnimation {
                             searchingstatus.searching = true
                         }
                     }
                 } onCommit: {
                     withAnimation {
                         self.searchingstatus.searching = true
                     }
                 }
                 .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
                 .modifier(TextFieldClearButton(text: $searchingstatus.searchingText))
                 .multilineTextAlignment(.leading)
            }
            .onSubmit {
                                 self.searchingstatus.searching = false
                             }
            .foregroundColor(.gray)
            .padding(.leading, 13)
             }
        .frame(width: 250.0, height: 25.0)
        .cornerRadius(13)
        .padding()
    }
}

struct TextFieldClearButton: ViewModifier {
    @Binding var text: String
    @EnvironmentObject var searchingstatus: AreWeSearching
    
    func body(content: Content) -> some View {
        HStack {
            content
            
            if !text.isEmpty {
                Button(
                    action: { self.text = ""; searchingstatus.searching = false; searchingstatus.searchingText = ""},
                    label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(Color(UIColor.opaqueSeparator))
                    }
                )
                .padding(.trailing, 10)
            }
        }
    }
}

extension UIApplication {
    func addTapGestureRecognizer() {
        guard let window = windows.first else { return }
        let tapGesture = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
        tapGesture.requiresExclusiveTouchType = false
        tapGesture.cancelsTouchesInView = false
        tapGesture.delegate = self
        window.addGestureRecognizer(tapGesture)
    }
}

extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true // set to `false` if you don't want to detect tap during other gestures
    }
}


//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar()
//    }
//}
