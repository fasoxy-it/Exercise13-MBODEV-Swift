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
}

struct Model {
    var people: [Person] = []
    
    init() {
        people.append(Person(name: "Andrea", surname: "Andrei"))
        people.append(Person(name: "Bruno", surname: "Bruni"))
        people.append(Person(name: "Carlo", surname: "Carli"))
        people.append(Person(name: "Diego", surname: "Dieghi"))
        people.append(Person(name: "Elisa", surname: "Elisi"))
        people.append(Person(name: "Federico", surname: "Federichi"))
        people.append(Person(name: "Guido", surname: "Guidi"))
        people.append(Person(name: "Ilaria", surname: "Ilari"))
        people.append(Person(name: "Luca", surname: "Luchi"))
        people.append(Person(name: "Mario", surname: "Mari"))
    }
}
