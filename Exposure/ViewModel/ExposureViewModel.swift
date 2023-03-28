//
//  ExposureViewModel.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import Foundation

class ExposureViewModel: ObservableObject {
    
    @Published var exposures: [Exposure] = []
    
    var selectedIndex: Int?
    
    @Published var newSubject = ""
    @Published var newAperture = ""
    @Published var newShutterSpeed = ""
    @Published var newASA = ""
    
    func addExposure() {
        self.exposures.append(
            Exposure(
                id: exposures.count,
                aperture: newAperture,
                shutterSpeed: newShutterSpeed,
                asa: newASA,
                subject: newSubject)
        )
    }
}
