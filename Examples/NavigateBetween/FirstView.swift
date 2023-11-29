//
//  FirstView.swift
//  Examples
//
//  Created by Simon Zwicker on 29.11.23.
//

import SwiftUI

struct FirstView: View {

    @State var fieldInput: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Test", text: $fieldInput)
                    .padding()
                    .border(.blue)

                NavigationLink(value: fieldInput) {
                    Text("Navigate to Second View")
                        .font(.title)
                }
            }
            .padding()
            .navigationDestination(for: String.self) { textInput in
                SecondView(text: textInput)
            }
        }

        // MARK: OLD NavigationView
//        NavigationView {
//            VStack {
//                TextField("Test", text: $fieldInput)
//                    .padding()
//                    .border(.blue)
//
//                NavigationLink {
//                    SecondView(text: fieldInput)
//                } label: {
//                    Text("Navigate to Second View")
//                        .font(.title)
//                }
//
//            }
//            .padding()
//        }
    }
}
