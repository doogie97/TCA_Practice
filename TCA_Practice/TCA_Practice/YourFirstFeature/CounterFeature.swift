//
//  CounterFeature.swift
//  TCA_Practice
//
//  Created by Doogie on 5/9/24.
//

import ComposableArchitecture

struct CounterFeature: Reducer {
    struct State: Equatable {
        var count = 0
    }
    
    enum Action: Equatable {
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count -= 1
                return .none
            case .incrementButtonTapped:
                state.count += 1
                return .none
            }
        }
    }
}
