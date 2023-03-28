//
//  Exposure.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import Foundation

/// Describes the settings used for an exposed image on a roll of film.
struct Exposure: Identifiable {
    /// The number of the exposure on the roll.
    let id: Int

    /// The aperture at which the exposure was shot.
    let aperture: String
    
    /// The shutter speed at which the exposure was shot.
    let shutterSpeed: String
    
    /// The ASA of the film roll.
    let asa: String
    
    /// The subject of the photograph.
    let subject: String
    
//    /// The zoom focal length of the exposure.
//    let focalLength: Int
}

/**
 The focal length could be recorded somewhere to calculate real aperture based on zoom. How to do it iteratively? Hard code my existing lenses into the app?
 Start with the macro lens.
 when adding a new exposure: specify `setAperature` `focalLength` `shutterSpeed` and `ISO`
 */
