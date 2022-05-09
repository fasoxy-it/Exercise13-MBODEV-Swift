//
//  Model.swift
//  Exercise01
//
//  Created by Mattia Fasoli on 09/05/22.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let favorite: Bool
}

struct Model {
    var people: [Person] = []
    
    init() {
        people.append(Person(name: "Andrea", surname: "Andrei", favorite: true))
        people.append(Person(name: "Bruno", surname: "Bruni", favorite: false))
        people.append(Person(name: "Carlo", surname: "Carli", favorite: true))
        people.append(Person(name: "Diego", surname: "Dieghi", favorite: false))
        people.append(Person(name: "Elisa", surname: "Elisi", favorite: true))
        people.append(Person(name: "Federico", surname: "Federichi", favorite: false))
        people.append(Person(name: "Guido", surname: "Guidi", favorite: true))
        people.append(Person(name: "Ilaria", surname: "Ilari", favorite: false))
        people.append(Person(name: "Luca", surname: "Luchi", favorite: true))
        people.append(Person(name: "Mario", surname: "Mari", favorite: false))
    }
}
