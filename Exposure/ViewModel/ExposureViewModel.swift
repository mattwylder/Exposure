//
//  ExposureViewModel.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import Foundation

class ExposureViewModel: ObservableObject {
    
    @Published var exposures: [Exposure]
    init(testPopulate: Bool = false) {
        if testPopulate {
            self.exposures = [
                Exposure(
                    id: 0,
                    aperture: "f16",
                    shutterSpeed: "125",
                    asa: "400",
                    subject: "dog"),
                Exposure(
                    id: 1,
                    aperture: "f11",
                    shutterSpeed: "60",
                    asa: "400",
                    subject: "cat")
            ]
        } else {
            self.exposures = []
        }
    }
    
    func addExposure() {
        self.exposures.append(Exposure(id: exposures.count, aperture: "f8", shutterSpeed: "125", asa: "400", subject: "Bird"))
    }
}
