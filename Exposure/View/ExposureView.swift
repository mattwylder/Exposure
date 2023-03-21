//
//  ExposureView.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

struct ExposureView: View {
    let exposure: Exposure
    var body: some View {
        ScrollView {
            HStack {
                Text("\(exposure.id)")
                Spacer()
                Text("\(exposure.subject)")
                Spacer()
                Text("\(exposure.aperture)")
                Spacer()
                Text("\(exposure.shutterSpeed)")
                Spacer()
                Text("\(exposure.asa)")
            }
        }
    }
}

struct ExposureView_Previews: PreviewProvider {
    static var previews: some View {
        let exp0 = Exposure(
            id: 0,
            aperture: "f16",
            shutterSpeed: "125",
            asa: "400",
            subject: "dog")
        ExposureView(
            exposure: exp0
        )
    }
}
