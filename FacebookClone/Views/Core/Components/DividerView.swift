//
//  DividerView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/6/24.
//

import SwiftUI

struct DividerView: View {
    
    private var width: CGFloat
    private var height: CGFloat
    
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color(.systemGray4))
            .frame(width: width, height: height)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView(width: 0, height: 0)
    }
}
