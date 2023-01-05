//
//  ContentView.swift
//  TemplatesExampleApp
//
//  Created by Marko Benačić on 03.01.2023..
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ButtonsViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("hello, world!")
            HStack {

                Button("left button") {
                    self.viewModel.incrementLeftButtonTaps()
                }
                .buttonStyle(BlueButton())
                Button("right button") {
                    self.viewModel.incrementRightButtonTaps()
                }
                .buttonStyle(BlueButton())

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ButtonsViewModel())
    }
}
