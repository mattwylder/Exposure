//
//  SwiftUIView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct AddExposureView: View {

    @ObservedObject var viewModel: ExposureViewModel
    
    var body: some View {
        VStack {
            TextField("Subject", text: $viewModel.newSubject)
            TextField("Aperture", text: $viewModel.newAperture)
            TextField("Shutter Speed", text: $viewModel.newShutterSpeed)
            TextField("ASA", text: $viewModel.newASA)
            
            Button("Add Exposure") {
                viewModel.addExposure()
            }
        }
    }
}

struct AddExposureView_Previews: PreviewProvider {
    static var previews: some View {
        AddExposureView(viewModel: ExposureViewModel(testPopulate: true))
    }
}
