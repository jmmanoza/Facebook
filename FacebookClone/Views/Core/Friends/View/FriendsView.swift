//
//  FriendsView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/22/24.
//

import SwiftUI

struct FriendsView: View {
    
    @StateObject private var viewModel = FriendsViewModel()
    
    var body: some View {
        NavigationView {
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        PrimaryButton(title: "Suggestions",
                                      backgroundColor: Color(.systemGray5),
                                      foregroundColor: .black,
                                      cornerRadius: 12)
                        
                        PrimaryButton(title: "Your Friends",
                                      backgroundColor: Color(.systemGray5),
                                      foregroundColor: .black,
                                      cornerRadius: 12)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        Text("Friend Requests")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("\(viewModel.friendsRequests.count)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("See All")
                                .font(.headline)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                    
                    // MARK: Content
                    LazyVStack(alignment: .leading) {
                        ForEach(viewModel.friendsRequests, id: \.self) { friendsRequests in
                            FriendRequestsRowView(friendProfilePic: friendsRequests.profileImageName ?? "",
                                                  friendName: "\(friendsRequests.firstName) \(friendsRequests.lastName)")
                        }
                    }
                   
                    Spacer()
                }
                .padding(.vertical)
                .onAppear {
                    viewModel.setUpFriendsRequests()
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Friends")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 24, height: 24)
                        .font(.system(size: 18, weight: .bold))
                }
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
