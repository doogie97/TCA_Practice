//
//  TCA_PracticeApp.swift
//  TCA_Practice
//
//  Created by Doogie on 5/9/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_PracticeApp: App {
    static let counterStore = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
