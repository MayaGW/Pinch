//
//  ControlImageView.swift
//  Pinch
//
//  Created by Maya Ghamloush on 17/02/2024.
//

import SwiftUI

struct ControlImageView: View {
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .padding()
   

}
