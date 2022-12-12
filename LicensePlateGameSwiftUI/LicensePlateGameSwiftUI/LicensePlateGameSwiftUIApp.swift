//
//  LicensePlateGameSwiftUIApp.swift
//  LicensePlateGameSwiftUI
//
//  Created by Jaye Mondale on 12/2/22.
//

import SwiftUI

@main
struct LicensePlateGameSwiftUIApp: App {
    let model = LicensePlateModel()
    var body: some Scene {
        WindowGroup {
            ContentView(model: model)
        }
    }
}
