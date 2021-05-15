//
//  RadioButtonGroup.swift
//  SwiftUI_RadioButton
//
//  Created by Alan Casas on 15/05/2021.
//

import SwiftUI

struct RadioButtonGroup: View {

    let items : [String]

    @State var selectedId: String = ""

    let callback: (String) -> ()

    var body: some View {
        VStack {
            ForEach(0..<items.count) { index in
                RadioButton(self.items[index], callback: self.radioGroupCallback, selectedID: self.selectedId)
            }
        }
    }

    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}

struct RadioButtonGroup_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonGroup(items: [
            "Holanda",
            "Belgica",
            "Croacia"
        ]
        , callback: { _ in })
    }
}
