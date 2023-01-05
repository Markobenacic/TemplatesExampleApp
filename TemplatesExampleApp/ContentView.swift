//
//  ContentView.swift
//  TemplatesExampleApp
//
//  Created by Marko Benačić on 03.01.2023..
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ButtonsViewModel = ButtonsViewModel()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("hello, world!")
            HStack {

                Button("left button") {
                    viewModel.incrementLeftButtonTaps()
                }
                .buttonStyle(BlueButton())
                Button("right button") {
                    viewModel.incrementRightButtonTaps()
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
