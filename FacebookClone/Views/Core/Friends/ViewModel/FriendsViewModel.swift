//
//  FriendsViewModel.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/28/24.
//

import Foundation

class FriendsViewModel: ObservableObject {
    
    @Published var users: [User] = [
        .init(id: "0", firstName: "Hello", lastName: "World", email: "helloworld@gmail.com", profileImageName: "profilePic", age: 21, gender: "Male", friendsIds: ["4"], friendsRequestsIds: ["1","2","3"], isCurrentUser: true),
        
        .init(id: "1", firstName: "Maria", lastName: "Striz", email: "maria@gmail.com", profileImageName: "pam", age: 21, gender: "Female", friendsIds: [], friendsRequestsIds: ["2","3"], isCurrentUser: false),
        
        .init(id: "2", firstName: "Boss", lastName: "Toyo", email: "toyo@gmail.com", profileImageName: "dwight", age: 21, gender: "Male", friendsIds: [], friendsRequestsIds: [], isCurrentUser: false),
        
        .init(id: "3", firstName: "Gloc", lastName: "9", email: "gloc9@gmail.com", profileImageName: "profilePic1", age: 21, gender: "Male", friendsIds: [], friendsRequestsIds: [], isCurrentUser: false),
        
        .init(id: "4", firstName: "Andrea", lastName: "Romanoff", email: "andrea@gmail.com", profileImageName: "romanoff", age: 21, gender: "Female", friendsIds: ["0"], friendsRequestsIds: [], isCurrentUser: false)
    ]
    
    @Published var friendsRequests: [User] = []
    
    func setUpFriendsRequests() {
        //print("patest: \(self.users.filter { self.users.fir.friendsRequestsIds.contains($0.id) })")
        self.friendsRequests = self.users.filter { self.users[0].friendsRequestsIds.contains($0.id) }
    }
}
