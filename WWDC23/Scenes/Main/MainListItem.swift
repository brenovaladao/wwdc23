//
//  MainListItem.swift
//  WWDC23
//
//  Created by Breno Valadão on 21/06/23.
//

import SwiftUI

enum MainListItem: Int, CaseIterable {
    case unevenRoundedRectangle
}

extension MainListItem: Identifiable {
    var id: String { rawValue.description }
}

extension MainListItem: Hashable {}

extension MainListItem {
    var displayName: LocalizedStringKey {
        switch self {
        case .unevenRoundedRectangle:
            "Uneven Rounded Rectangle"
        }
    }

    var displayNameAbbreviated: LocalizedStringKey {
        switch self {
        case .unevenRoundedRectangle:
            "Uneven Round. Rect."
        }
    }
}
