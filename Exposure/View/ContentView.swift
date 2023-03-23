//
//  ContentView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ExposureViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.exposures) { exposure in
                ExposureView(exposure: exposure)
            }
            .toolbar {
                NavigationLink(
                    destination: AddExposureView { newExposure in
                        viewModel.exposures.append(newExposure)
                    },
                    label: { Image(systemName: "plus") }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ExposureViewModel(testPopulate: true))
    }
}
