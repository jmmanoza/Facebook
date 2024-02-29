//
//  ProfileView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/4/24.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.dismiss) private var dismiss
    var username: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(showsIndicators: false) {
                VStack {
                    ProfileHeaderView(width: proxy.size.width)
                    
                    DividerView(width: proxy.size.width, height: 6)
                    
                    ProfileOptionsView()
                    
                    ProfileFriendsView(viewWidth: proxy.size.width)
                    
                    DividerView(width: proxy.size.width, height: 6)
                    
                    ManageProfilePostsView(viewWidth: proxy.size.width)
                    
                    DividerView(width: proxy.size.width, height: 6)
                    
                    ForEach(0..<2) { _ in
                        PostView(myProfilePic: "profilePic",
                                 myUsername: "Hello world",
                                 date: "1 day",
                                 postCaption: "Nice office",
                                 postImageUrl: "office",
                                 postLikeCount: "109",
                                 postCommentCount: "87",
                                 postShareCount: "40",
                                 isVideo: false)
                        
                        DividerView(width: proxy.size.width, height: 6)
                    }
                }
            }
            .navigationTitle("Hello world.")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .bold))
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .bold))
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
