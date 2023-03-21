//
//  Exposure.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import Foundation

struct Exposure: Identifiable {
    let id: Int // id should be exposure number in roll?
    let aperture: String // maybe add some kind of slider with each stop, with a button to unlock it and find half-way spots?
    let shutterSpeed: String
    let asa: String
    let subject: String
//    let focalLength: Int
}

/**
 Okay, what can we do here?
 The focal length could be recorded somewhere to calculate real aperture based on zoom. How to do it iteratively? Hard code my existing lenses into the app?
 Start with the macro lens.
 when adding a new exposure: specify `setAperature` `focalLength` `shutterSpeed` and `ISO`
 */
