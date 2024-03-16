//
//  PlanetListView.swift
//  Planet
//
//  Created by Berkay on 20.02.2024.
//

import SwiftUI

struct PlanetListView: View {
    var body: some View {
        NavigationView {
            List(planetList, id: \.name) { planet in
                NavigationLink(destination: DetailView(planet: planet)) {
                    Text(planet.name)
                }
                }
            .navigationTitle("Planets")
        }
    }
}

#Preview {
    PlanetListView()
}
