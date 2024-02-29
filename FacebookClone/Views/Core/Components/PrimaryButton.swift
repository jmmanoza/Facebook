//
//  PrimaryButton.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/6/24.
//

import SwiftUI

struct PrimaryButton: View {
    private var title: String
    private var iconName: String
    private var backgroundColor: Color
    private var foregroundColor: Color
    
    private var cornerRadius: CGFloat = 8
    private var iconForegroundColor: Color = .black
    private var traillingText: String
    private var customWidthSize: CGFloat = 120
    private var customHeightSize: CGFloat = 32
    private var fontWeight: Font.Weight = .semibold
    
    init(title: String, iconName: String? = nil, backgroundColor: Color, foregroundColor: Color,
         cornerRadius: CGFloat? = nil, iconForegroundColor: Color? = nil, traillingText: String? = nil,
         customWidthSize: CGFloat? = nil, customHeightSize: CGFloat? = nil, fontWeight: Font.Weight? = nil) {
        self.title = title
        self.iconName = iconName ?? ""
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornerRadius ?? 8.0
        self.iconForegroundColor = iconForegroundColor ?? .black
        self.traillingText = traillingText ?? ""
        self.customWidthSize = customWidthSize ?? 0
        self.customHeightSize = customHeightSize ?? 0
        self.fontWeight = fontWeight ?? .semibold
    }
    
    var body: some View {
        Button(action: {}) {
            HStack {
                if !iconName.isEmpty {
                    Image(systemName: iconName)
                        .foregroundColor(iconForegroundColor)
                }
                
                Text(title)
                    .font(.footnote)
                    .fontWeight(fontWeight)
                    .foregroundColor(foregroundColor)
                
                if !traillingText.isEmpty {
                    Text(traillingText)
                        .fontWeight(.semibold)
                        .foregroundColor(foregroundColor)
                }
            }
            .padding(.horizontal)
            .frame(height: 34)
            .if(customWidthSize > 0) { view in
                view.frame(width: customWidthSize)
            }
            .if(customHeightSize > 0) { view in
                view.frame(height: customHeightSize)
            }
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        }
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Hello world",
                                 iconName: "globe",
                                 backgroundColor: Color.blue,
                                 foregroundColor: Color.white)
    }
}
