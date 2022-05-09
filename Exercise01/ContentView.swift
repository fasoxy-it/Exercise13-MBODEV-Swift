//
//  ContentView.swift
//  Exercise01
//
//  Created by Mattia Fasoli on 09/05/22.
//

import SwiftUI

let people = Model().people
var favorites: Bool = false

struct ContentView: View {
    var body: some View {
        List(people.filter {$0.favorite}) {
            PersonRow(person: $0)
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
