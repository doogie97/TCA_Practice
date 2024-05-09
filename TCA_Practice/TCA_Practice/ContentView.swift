//
//  ContentView.swift
//  TCA_Practice
//
//  Created by Doogie on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
//                    NavigationLink(destination: YourFirstFeatureView()) {
//                        Text("Your first feature")
//                    }
                } header: {
                    Text("TCA_Tutorial")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .navigationTitle("TCA_Practice")
        }
    }
}

#Preview {
    ContentView()
}
