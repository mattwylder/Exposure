//
//  SwiftUIView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct AddExposureView: View {

    @ObservedObject var viewModel = AddExposureViewModel()
    
    let completion: (Exposure) -> Void
    
    var body: some View {
        VStack {
            TextField("Subject", text: $viewModel.subject)
            TextField("Aperture", text: $viewModel.aperture)
            TextField("Shutter Speed", text: $viewModel.shutterSpeed)
            TextField("ASA", text: $viewModel.asa)
            
            Button("Add Exposure") {
                completion(
                    Exposure(
                        id: 3,
                        aperture: viewModel.aperture,
                        shutterSpeed: viewModel.shutterSpeed,
                        asa: viewModel.shutterSpeed,
                        subject: viewModel.subject
                    )
                )
            }
        }
    }
}

struct AddExposureView_Previews: PreviewProvider {
    static var previews: some View {
        AddExposureView(viewModel: AddExposureViewModel(), completion: {_ in })
    }
}
