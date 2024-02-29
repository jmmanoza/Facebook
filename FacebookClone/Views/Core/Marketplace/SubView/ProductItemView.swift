//
//  ProductItemView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/23/24.
//

import SwiftUI

struct ProductItemView: View {
    
    private var viewWidth: CGFloat
    private var productItemPic: String
    private var productItemName: String
    
    init(viewWidth: CGFloat, productPic: String, productName: String) {
        self.viewWidth = viewWidth
        self.productItemPic = productPic
        self.productItemName = productName
    }
    
    var body: some View {
        VStack {
            Image(productItemPic)
                .resizable()
                .scaledToFill()
                .frame(width: (viewWidth) - 3, height: (viewWidth) - 3)
                .clipped()
            
            Text(productItemName)
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(viewWidth: 0, productPic: "", productName: "")
    }
}
