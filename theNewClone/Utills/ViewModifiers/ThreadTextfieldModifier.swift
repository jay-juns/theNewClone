//
//  ThreadTextfieldModifier.swift
//  theNewClone
//
//  Created by junseok Kim on 2023/08/28.
//

import SwiftUI

struct ThreadTextfieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
