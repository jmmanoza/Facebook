//
//  SwiftUIView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/10/24.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
