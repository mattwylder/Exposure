//
//  ContentView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct ExposureListView: View {
    @ObservedObject var viewModel: ExposureViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.exposures) { exposure in
                ExposureView(exposure: exposure)
            }
            .toolbar {
                NavigationLink(
                    destination: AddExposureView(viewModel: self.viewModel),
                    label: { Image(systemName: "plus") }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExposureListView(viewModel: ExposureViewModel())
    }
}
