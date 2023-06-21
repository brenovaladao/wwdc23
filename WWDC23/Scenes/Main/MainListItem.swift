//
//  MainListItem.swift
//  WWDC23
//
//  Created by Breno Valadão on 21/06/23.
//

import SwiftUI

enum MainListItem: Int, Identifiable, CaseIterable {
    case unevenRoundedRectangle

    var id: String { rawValue.description }

    var displayName: LocalizedStringKey {
        switch self {
        case .unevenRoundedRectangle:
            "Uneven Rounded Rectangle"
        }
    }
}
