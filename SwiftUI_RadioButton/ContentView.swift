//
//  ContentView.swift
//  SwiftUI_RadioButton
//
//  Created by Alan Casas on 15/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
                    Text("Example")
                        .font(Font.headline)
                        .padding()
                    RadioButtonGroup(items: ["Rome", "London", "Paris", "Berlin", "New York"], selectedId: "London") { selected in
                        print("Selected is: \(selected)")
                    }
                }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
