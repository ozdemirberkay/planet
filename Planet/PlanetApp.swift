//
//  PlanetApp.swift
//  Planet
//
//  Created by Berkay on 20.02.2024.
//

import SwiftUI

@main
struct PlanetApp: App {
    var body: some Scene {
        WindowGroup {
            PlanetListView()
        }
        
        WindowGroup(id: planetVolumeAreaId, for: String.self) { $entityName in
            SpaceArea(entityName: entityName!)
            }
            .windowStyle(.volumetric)
        
        ImmersiveSpace(id: fullPlanetAreaId){
            PlanetArea()
            }
            .immersionStyle(selection: .constant(.full), in: .full)
        }
    }
