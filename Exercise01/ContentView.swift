//
//  ContentView.swift
//  Exercise01
//
//  Created by Mattia Fasoli on 09/05/22.
//

import SwiftUI

let people = Model().people


struct ContentView: View {
    
    @State private var showFavorites = false
    
    var filteredList: [Person] {
        people.filter {
            !showFavorites || $0.favorite
        }
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Favorites")
            }
            List(filteredList) {
                PersonRow(person: $0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
