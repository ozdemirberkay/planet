//
//  PlanetArea.swift
//  Planet
//
//  Created by Berkay on 20.02.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetArea: View {
    var body: some View {
        RealityView { content in
                    if let immersiveContentEntity = try? await Entity(named: "Planet", in: realityKitContentBundle) {
                        content.add(immersiveContentEntity)
                    }
                }
    }
}

#Preview {
    PlanetArea()
}
