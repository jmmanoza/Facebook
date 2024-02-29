//
//  User.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/28/24.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var firstName: String
    var lastName: String
    var email: String
    var profileImageName: String?
    var coverImageName: String?
    var age: Int
    var gender: String
    var friendsIds: [String]
    var friendsRequestsIds: [String]
    var isCurrentUser: Bool
}
