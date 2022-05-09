//
//  ContentView.swift
//  Exercise01
//
//  Created by Mattia Fasoli on 09/05/22.
//

import SwiftUI

let people = Model().people

struct ContentView: View {
    var body: some View {
        List(people) { person in
            PersonRow(person: person)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
