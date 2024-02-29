//
//  MarketPlaceView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/23/24.
//

import SwiftUI

struct MarketPlaceView: View {
    
    @StateObject private var viewModel = MarketPlaceViewModel()
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            PrimaryButton(title: "Sell", iconName: "square.and.pencil",
                                          backgroundColor: Color(.systemGray5), foregroundColor: .black,
                                          cornerRadius: 20,
                                          customWidthSize: proxy.size.width * 0.45, customHeightSize: 44,
                                          fontWeight: .bold)
                            PrimaryButton(title: "Categories", iconName: "list.bullet",
                                          backgroundColor: Color(.systemGray5), foregroundColor: .black,
                                          cornerRadius: 20,
                                          customWidthSize: proxy.size.width * 0.45, customHeightSize: 44,
                                          fontWeight: .bold)
                        }
                        .padding()
                        
                        Divider()
                        
                        HStack {
                            Text("Today's picks")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Spacer()
                            
                            Button(action: {}) {
                                HStack(spacing: 8) {
                                    Image("pin")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 20, height: 20)
                                    Text(viewModel.currentLocation)
                                }
                                .foregroundColor(.blue)
                            }
                        }
                        .padding()
                        
                        LazyVGrid(columns: gridItems, spacing: 1) {
                            ForEach(viewModel.items, id: \.self) { item in
                                ProductItemView(viewWidth: proxy.size.width/2,
                                                productPic: item.imageName,
                                                productName: "₱\(item.item_price) - \(item.item_name)")
                            }
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Marketplace")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(spacing: 16) {
                            Button(action: {}) {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                            }
                            
                            Button(action: {}) {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                            }
                        }
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .bold))
                    }
                }
            }
        }
    }
}

struct MarketPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        MarketPlaceView()
    }
}
