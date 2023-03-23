//
//  ExposureApp.swift
//  Exposure
//
//  Created by Matthew Wylder on 3/21/23.
//

import SwiftUI

@main
struct ExposureApp: App {
    var body: some Scene {
        WindowGroup {
            ExposureListView(viewModel: ExposureListViewModel(testPopulate: true))
        }
    }
}
