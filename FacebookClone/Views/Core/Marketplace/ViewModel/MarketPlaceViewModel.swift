//
//  MarketPlaceViewModel.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/28/24.
//

import Foundation

class MarketPlaceViewModel: ObservableObject {
    
    @Published var items: [Item] = [
        .init(id: UUID().uuidString, item_name: "1 bedroom 1 CR", item_price: 1, imageName: "apartment1"),
        .init(id: UUID().uuidString, item_name: "1 bedroom 1 bath", item_price: 1, imageName: "apartment2"),
        .init(id: UUID().uuidString, item_name: "2015 BMW", item_price: 1, imageName: "car1"),
        .init(id: UUID().uuidString, item_name: "2020 Mercedens", item_price: 1, imageName: "car2"),
        .init(id: UUID().uuidString, item_name: "New corner sofa", item_price: 1, imageName: "sofa1"),
        .init(id: UUID().uuidString, item_name: "Corner sofa", item_price: 1, imageName: "sofa2")
    ]
    
    @Published var currentLocation: String = "Makati, Manila"
}
