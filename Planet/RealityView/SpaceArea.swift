//
//  SpaceArea.swift
//  Planet
//
//  Created by Berkay on 20.02.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SpaceArea: View {
    @State var entityName: String
    var body: some View {
        RealityView { content in
                if let model = try? await Entity(named: entityName, in: realityKitContentBundle) {
                        content.add(model)
                    
                    }
                }
    }
}

#Preview {
    SpaceArea(entityName: "Earth")
}
