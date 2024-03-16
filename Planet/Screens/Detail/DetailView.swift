//
//  DetailView.swift
//  Planet
//
//  Created by Berkay on 20.02.2024.
//

import SwiftUI

struct DetailView: View {
    let planet: Planet
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    @State private var immerseSpaceIsOpen : Bool = false
    @State private var windowIsOpen : Bool = false
    
    var body: some View {
        VStack {
            Text(planet.name).font(.largeTitle)
            SpaceArea(entityName: planet.name)
            Text(planet.description)
                HStack {
                    Button(action: {
                        if (immerseSpaceIsOpen) {
                            Task {
                                await dismissImmersiveSpace()
                                self.immerseSpaceIsOpen = false
                            }
                        }
                        else {
                            Task {
                                await openImmersiveSpace(id: fullPlanetAreaId)
                                self.immerseSpaceIsOpen = true
                            }
                        }                    }) {
                        Text("Full Immensed")
                    }
                    Button(action: {
                        if (windowIsOpen) {
                            dismissWindow(id: planetVolumeAreaId)
                            self.windowIsOpen = false
                        }
                        else {
                            openWindow(id: planetVolumeAreaId,  value: planet.name)
                            self.windowIsOpen = true
                        }
                    }) {
                        Text("Volumetric")
                    }
                }
            
        }.padding()
    }
}

#Preview {
    DetailView(planet: Planet(name: "Mercury", modelName: "mars_model", description: "Mercury is the closest planet to the Sun, and the smallest planet in our solar system - only slightly larger than Earth's Moon."))
}
