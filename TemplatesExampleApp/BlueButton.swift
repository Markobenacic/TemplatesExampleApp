//
//  BlueButton.swift
//  TemplatesExampleApp
//
//  Created by Marko Benačić on 05.01.2023..
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}
