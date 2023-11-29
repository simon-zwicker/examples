//
//  SecondView.swift
//  Examples
//
//  Created by Simon Zwicker on 29.11.23.
//

import SwiftUI

struct SecondView: View {

    let text: String

    var body: some View {
        Text("You entered: \(text)")
            .font(.title)
    }
}
