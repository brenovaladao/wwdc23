//
//  MainView.swift
//  WWDC23
//
//  Created by Breno Valadão on 21/06/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationSplitView {
            List(MainListItem.allCases) { item in
                NavigationLink(value: item) {
                    Text(item.displayName)
                }
            }
            .navigationTitle("WWDC 23")
            .navigationDestination(
                for: MainListItem.self,
                destination: handleDestination
            )
        } detail: {
            Text("Select an item")
        }
    }
}

private extension MainView {
    func handleDestination(_ item: MainListItem) -> some View {
        switch item {
        case .unevenRoundedRectangle:
            UnevenRoundedRectangleView()
                .navigationTitle(item.displayNameAbbreviated)
        }
    }
}

#Preview {
    MainView()
}
