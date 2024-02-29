//
//  FeedViewModel.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/29/24.
//

import Foundation

class FeedViewModel: ObservableObject {
    
    @Published var users: [User] = [
    
        .init(id: "0", firstName: "Hello", lastName: "World", email: "helloworld@gmail.com", profileImageName: "profilePic", coverImageName: "cover_picture", age: 21, gender: "Male", friendsIds: ["4", "5", "6", "7"], friendsRequestsIds: ["1","2","3"], isCurrentUser: true),
        
        .init(id: "1", firstName: "Maria", lastName: "Striz", email: "maria@gmail.com", profileImageName: "pam", age: 21, gender: "Female", friendsIds: [], friendsRequestsIds: ["2","3"], isCurrentUser: false),
        
        .init(id: "2", firstName: "Boss", lastName: "Toyo", email: "toyo@gmail.com", profileImageName: "dwight", age: 21, gender: "Male", friendsIds: [], friendsRequestsIds: [], isCurrentUser: false),
        
            .init(id: "3", firstName: "Gloc", lastName: "9", email: "gloc9@gmail.com", profileImageName: "profilePic1", coverImageName: "Story1", age: 21, gender: "Male", friendsIds: [], friendsRequestsIds: [], isCurrentUser: false),
        
            .init(id: "4", firstName: "Andrea", lastName: "", email: "andrea@gmail.com", profileImageName: "romanoff", coverImageName: "Story1", age: 21, gender: "Female", friendsIds: ["0"], friendsRequestsIds: [], isCurrentUser: false),
        
            .init(id: "5", firstName: "Ann", lastName: "Nir", email: "ann@gmail.com", profileImageName: "profilePic2", coverImageName: "Story2", age: 32, gender: "Female", friendsIds: ["0"], friendsRequestsIds: [], isCurrentUser: false),
        
            .init(id: "6", firstName: "Tom", lastName: "Redil", email: "thomas@gmail.com", profileImageName: "profilePic3", coverImageName: "Story3", age: 29, gender: "Male", friendsIds: ["0"], friendsRequestsIds: [], isCurrentUser: false),
        
            .init(id: "7", firstName: "Mish", lastName: "Angel", email: "angelmishy@gmail.com", profileImageName: "profilePic4", coverImageName: "Story4", age: 21, gender: "Female", friendsIds: ["0"], friendsRequestsIds: [], isCurrentUser: false)
    ]
    
    @Published var friends: [User] = []
    
    @Published var posts: [Post] = [
        .init(id: "0", userId: "3", postTitle: "The Team", postLikes: 32, postShares: 15, postUrl: "office", isVideo: false),
        .init(id: "1", userId: "0", postTitle: "You never walk alone", postLikes: 101, postShares: 45, postUrl: "stadium", isVideo: false)
    ]
    
    init() {
        setUpFriends()
        setUpPost()
    }
    
    private func setUpFriends() {
        self.friends = self.users.filter{ self.users[0].friendsIds.contains($0.id) }
    }
    
    private func setUpPost() {
        for i in 0..<posts.count {
            posts[i].user = users.first(where: {$0.id == posts[i].userId})
        }
    }
}
