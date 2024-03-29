//
//  FeedView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/4/24.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject private var viewModel = FeedViewModel()
    
    @State var isOpenProfile: Bool = false
    @State var isCreatePost: Bool = false
    private let facebookBlue: Color = Color(red: 26/255, green: 103/255, blue: 178/255)
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
                    VStack {
                        HeaderView(vm: viewModel,
                                   isOpenProfile: $isOpenProfile,
                                   isCreatePost: $isCreatePost)
                        
                        DividerView(width: proxy.size.width, height: 6)
                        
                        StoryFeedView(vm: viewModel)
                        
                        DividerView(width: proxy.size.width, height: 6)
                        
                        ForEach(0..<viewModel.posts.count) { index in
                            PostView(vm: viewModel,
                                     index: index,
                                     isVideo: false)
                            
                            DividerView(width: proxy.size.width, height: 6)
                        }
                        
                        Spacer()
                        
                        NavigationLink(isActive: $isOpenProfile) {
                            ProfileView(vm: viewModel)
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            EmptyView()
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Facebook")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundStyle(facebookBlue)
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            HStack(spacing: 24) {
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                                    .font(.system(size: 18, weight: .bold))
                                Image("messenger")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                            }
                        }
                    }
                    .fullScreenCover(isPresented: $isCreatePost) {
                        CreatePostView(isCreatePost: $isCreatePost, postCaption: .constant("hello world 123"))
                            .navigationBarBackButtonHidden(true)
                    }
                }
            }
            
        }
        .navigationBarTitleDisplayMode(.large)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
