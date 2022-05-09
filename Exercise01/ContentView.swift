//
//  ContentView.swift
//  Exercise01
//
//  Created by Mattia Fasoli on 09/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var people = Model().people
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
            Button(action: {
                guard (!people.isEmpty) else {return}
                people.removeFirst()
                print(people.count)
            }) {
                Text("Remove first")
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
