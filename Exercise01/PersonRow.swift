//
//  PersonRow.swift
//  Exercise01
//
//  Created by Mattia Fasoli on 09/05/22.
//

import SwiftUI

struct PersonRow: View {
    var person: Person
    var body: some View {
        HStack {
            Text(person.name).bold()
            Text(person.surname)
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Model().people[0])
    }
}
