//
//  MainView.swift
//  WWDC23
//
//  Created by Breno Valadão on 21/06/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List(MainListItem.allCases) { item in
                Text(item.displayName)
            }
            .navigationTitle("WWDC 23")
        }
    }
}

#Preview {
    MainView()
}
