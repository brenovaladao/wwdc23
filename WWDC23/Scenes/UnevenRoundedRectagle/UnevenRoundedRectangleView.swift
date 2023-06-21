//
//  UnevenRoundedRectangleView.swift
//  WWDC23
//
//  Created by Breno Valadão on 21/06/23.
//

import SwiftUI

struct UnevenRoundedRectangleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            Button(action: {
                print("Button tapped")
            }) {
                Label(
                    title: { Text("Sample") },
                    icon: { Image(systemName: "42.circle") }
                )
                .font(.headline)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .foregroundColor(.red)
                .overlay {
                    UnevenRoundedRectangle(
                        topLeadingRadius: 20,
                        bottomLeadingRadius: 2,
                        bottomTrailingRadius: 2,
                        topTrailingRadius: 20,
                        style: .continuous
                    )
                    .stroke(.red, lineWidth: 4)
                }
            }
        }
    }
}

#Preview {
    UnevenRoundedRectangleView()
}
