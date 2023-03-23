//
//  AddExposureViewModel.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import Foundation

/// Allows creation of a new `Exposure`, currently similar to `Exposure` but will allow for
/// more interesting UI options later, like zoom focal length to calculate aperture.
class AddExposureViewModel: ObservableObject {
    @Published var subject = ""
    @Published var aperture = ""
    @Published var shutterSpeed = ""
    @Published var asa = ""
}
