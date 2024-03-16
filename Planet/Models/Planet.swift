//
//  Planet.swift
//  Planet
//
//  Created by Berkay on 20.02.2024.
//

import Foundation

struct Planet {
    let name : String
    let modelName : String
    let description : String
}


let planetList = [
    Planet(name: "Mercury", modelName: "mars_model", description: "Mercury is the closest planet to the Sun, and the smallest planet in our solar system - only slightly larger than Earth's Moon."),
    Planet(name: "Venus", modelName: "jupiter_model", description: "Venus is the second planet from the Sun, and the sixth largest planet. It’s the hottest planet in our solar system."),
    Planet(name: "Earth", modelName: "earth_model", description: "Mars is the third planet from the Sun. Your home. And the one planet that NASA studies more than any other."),
    Planet(name: "Mars", modelName: "mars_model", description: "Mars is the fourth planet from the Sun, and the seventh largest. It’s the only planet we know of inhabited entirely by robots."),
    Planet(name: "Jupiter", modelName: "jupiter_model", description: "Jupiter is the fifth planet from the Sun, and the largest in the solar system – more than twice as massive as the other planets combined."),
    Planet(name: "Saturn", modelName: "earth_model", description: "Saturn is the sixth planet from the Sun, and the second largest in the solar system. It’s surrounded by beautiful rings."),
    Planet(name: "Uranus", modelName: "mars_model", description: "Uranus is the seventh planet from the Sun, and the third largest planet in our solar system. It appears to spin sideways."),
    Planet(name: "Neptune", modelName: "jupiter_model", description: "Neptune is the eighth, and most distant planet from the Sun. It’s the fourth-largest, and the first planet discovered with math."),
]

let planetVolumeAreaId: String = "VolumetricModelArea"
let fullPlanetAreaId: String = "FullPlanetArea"
