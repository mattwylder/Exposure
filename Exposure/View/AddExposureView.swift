//
//  SwiftUIView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct AddExposureView: View {
    
    // What is more MVVM, mutating the viewModel here, or returning an object to the previous view?
    @ObservedObject var viewModel: ExposureViewModel
    
    var body: some View {
        Text("Test")
    }
}

struct AddExposureView_Previews: PreviewProvider {
    static var previews: some View {
        AddExposureView(viewModel: ExposureViewModel(testPopulate: true))
    }
}
