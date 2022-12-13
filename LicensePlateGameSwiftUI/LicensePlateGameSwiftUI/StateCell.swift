//
//  StateCell.swift
//  LicensePlateGameSwiftUI
//
//  Created by Jaye Mondale on 12/2/22.
//

import Foundation
import SwiftUI

struct ListCell: View {
    var title: String
    
    @State private var isChecked = false
    @State private var showStateDetails = false
    @State private var path = NavigationPath()
    
    var body: some View {
            ZStack(alignment: .leading) {
                HStack {
                    Button(action: {}) {
                        if isChecked {
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "squareshape")
                        }
                    } .onTapGesture {
                        isChecked = !isChecked
                    }
                    Text(title)
                    Spacer()
                    Button(action: { }) {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                    }
                    .background(
                        NavigationLink(destination: Text(title)) {
                        EmptyView() })
                }
            }
            .frame(height: 50)
            .padding(.horizontal)
            .background(Color.orange.gradient, in: RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.white)
            .listRowSeparator(.hidden)
    }
}
