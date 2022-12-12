//
//  ContentView.swift
//  LicensePlateGameSwiftUI
//
//  Created by Jaye Mondale on 12/2/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var model = LicensePlateModel()
    
    var body: some View {
        NavigationView {
            List(model.stateNames, id: \.self) { course in
                            ListCell(title: course)
                        }
                        .listStyle(.plain)
                        .navigationTitle("License Plate Game")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = LicensePlateModel()
        ContentView(model: model)
    }
}


