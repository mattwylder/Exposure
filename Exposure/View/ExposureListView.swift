//
//  ContentView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct ExposureListView: View {
    @ObservedObject var viewModel: ExposureListViewModel
    
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
        ExposureListView(viewModel: ExposureListViewModel(testPopulate: true))
    }
}
