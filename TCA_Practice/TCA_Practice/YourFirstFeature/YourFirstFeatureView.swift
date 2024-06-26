//
//  YourFirstFeatureView.swift
//  TCA_Practice
//
//  Created by Doogie on 5/9/24.
//

import SwiftUI
import ComposableArchitecture

struct YourFirstFeatureView: View {
    let store: StoreOf<CounterFeature>
    @ObservedObject var viewStore: ViewStoreOf<CounterFeature>
    
    init(store: StoreOf<CounterFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }
    
    var body: some View {
        VStack {
            Text("\(viewStore.count)")
                .padding()
                .font(.largeTitle)
                .frame(minWidth: 50)
                .background(.black.opacity(0.1))
                .cornerRadius(10)
            
            HStack {
                counterButton(text: "-") {
                    viewStore.send(.decrementButtonTapped)
                }
                counterButton(text: "+") {
                    viewStore.send(.incrementButtonTapped)
                }
            }
        }
    }
    
    private func counterButton(text: String, action: @escaping () -> Void) -> some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
                .padding()
                .font(.largeTitle)
                .frame(width: 50)
                .background(.black.opacity(0.1))
                .cornerRadius(10)
        })
    }
}

#Preview {
    YourFirstFeatureView(store: Store(initialState: CounterFeature.State(),
                                      reducer: {
        CounterFeature()
    }))
}
