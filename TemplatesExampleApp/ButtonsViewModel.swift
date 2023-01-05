//
//  ButtonsViewModel.swift
//  TemplatesExampleApp
//
//  Created by Marko Benačić on 05.01.2023..
//

import Foundation
import Combine

class ButtonsViewModel: ObservableObject {
    @Published var leftButtonTaps = 0
    @Published var rightButtonTaps = 0

    func incrementLeftButtonTaps() {
        leftButtonTaps += 1
        print("left: \(leftButtonTaps)")
    }

    func incrementRightButtonTaps() {
        rightButtonTaps += 1
        print("right: \(rightButtonTaps)")
    }
}
