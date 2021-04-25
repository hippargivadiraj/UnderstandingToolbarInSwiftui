//
//  ContentView.swift
//  UnderstandingToolbarInSwiftui
//
//  Created by Vadiraj Hippargi on 4/25/21.
//

import SwiftUI

struct ContentView: View {
    let messages: [String] = ["a", "b"]

    
    var body: some View {
        NavigationView{
        List(messages, id: \.self) { message in
                    Text(message)
                }
                .navigationTitle("Messages")
                .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
