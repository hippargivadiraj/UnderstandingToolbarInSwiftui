//
//  UsingToolbarItem.swift
//  UnderstandingToolbarInSwiftui
//
//  Created by Vadiraj Hippargi on 4/25/21.
//

import SwiftUI

struct UsingToolbarItem: View {
    
    let messages: [String] = ["a", "b"]
    var body: some View {
        
        NavigationView{
            List(messages, id: \.self) { message in
                Text(message)
            }
            .navigationTitle("Messages")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("New") {}
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button("Filter") {}
                }
            }
        }
    }
}

struct UsingToolbarItem_Previews: PreviewProvider {
    static var previews: some View {
        UsingToolbarItem()
    }
}
