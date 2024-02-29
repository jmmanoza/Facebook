//
//  Post.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/28/24.
//

import Foundation

struct Post: Identifiable, Codable, Hashable {
    let id: String
    var userId: String
    var postTitle: String
    var postLikes: Int
    var postShares: Int
    var postUrl: String
    var isVideo: Bool
    //let timeStamp: TimeStamp
    var user: User?
}
