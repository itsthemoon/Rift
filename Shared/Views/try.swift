//
//  try.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/28/22.
//

import SwiftUI

struct tryOut: View {
    @State private var selectedStrength = "Mild"
    let strengths = ["Mild", "Medium", "Mature"]
    @State var items: [String] = ["Apples", "Oranges", "Bananas", "Pears", "Mangos", "Grapefruit"]
    @State var selections: [String] = []
    var body: some View {
        List {
            ForEach(self.items, id: \.self) { item in
                MultipleSelectionRow(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                }
            }
        }
    }
}


//struct MultipleSelectionRow: View {
//    var title: String
//    var isSelected: Bool
//    var action: () -> Void
//
//    var body: some View {
//        Button(action: self.action) {
//            HStack {
//                Text(self.title)
//                if self.isSelected {
//                    Spacer()
//                    Image(systemName: "checkmark")
//                }
//            }
//        }
//    }
//}
struct try_Previews: PreviewProvider {
    static var previews: some View {
        tryOut()
    }
}
