//
//  PostView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/5/24.
//

import SwiftUI
import AVKit

struct PostView: View {
    
    @StateObject private var viewModel: FeedViewModel
    private var index: Int
    private var isVideo: Bool
    
//    private var myProfilePic: String
//    private var myUsername: String
//    private var date: String
//    private var postCaption: String
//    private var postImageUrl: String
//    private var postLikeCount: String
//    private var postCommentCount: String
//    private var postShareCount: String
//    private var isVideo: Bool
    private var videoURL: String? = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
    private let facebookBlue: Color = Color(red: 26/255, green: 103/255, blue: 178/255)
    
//    init(myProfilePic: String,
//         myUsername: String,
//         date: String,
//         postCaption: String,
//         postImageUrl: String,
//         postLikeCount:String,
//         postCommentCount: String,
//         postShareCount: String,
//         isVideo: Bool,
//         videoURL: String? = nil) {
//
//        self.myProfilePic = myProfilePic
//        self.myUsername = myUsername
//        self.date = date
//        self.postCaption = postCaption
//        self.postImageUrl = postImageUrl
//        self.postLikeCount = postLikeCount
//        self.postCommentCount = postCommentCount
//        self.postShareCount = postShareCount
//        self.isVideo = isVideo
//        self.videoURL = videoURL
//    }
    
    init(vm: FeedViewModel, index: Int, isVideo: Bool) {
        _viewModel = StateObject(wrappedValue: vm)
        self.index = index
        self.isVideo = isVideo
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // Post Info
            HStack {
                Image(viewModel.posts[index].user?.profileImageName ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("\(viewModel.posts[index].user?.firstName ?? "") \(viewModel.posts[index].user?.lastName ?? "")")
                        .font(.system(size: 14, weight: .semibold))
                    
                    HStack(alignment: .top, spacing: 3) {
                        Text("1 day")
                        Text("•")
                        Image(systemName: "globe")
                    }
                    .font(.system(size: 12))
                    .foregroundColor(facebookBlue)
                }
                
                Spacer()
                
                HStack(spacing: 24) {
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .frame(width: 16, height: 20)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .frame(width: 20, height: 20)
                    }
                }
                .foregroundColor(Color(.darkGray))
                .font(.system(size: 20, weight: .bold))
            }
            .padding(.horizontal)
            .padding(.top, 5)
            
            // Post Content
            Text(viewModel.posts[index].postTitle)
                .font(.system(size: 16))
                .padding(.horizontal)
            
            if !(isVideo) {
                Image(viewModel.posts[index].postUrl)
                    .resizable()
                    .scaledToFill()
            } else {
                if let url = URL(string: videoURL ?? "") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: 400)
                }
            }
            
            // Post action info
            HStack(spacing: 3) {
                Image("like")
                    .resizable()
                    .frame(width: 18, height: 18)
                Text("\(viewModel.posts[index].postLikes)")
                
                Spacer()
                
                Text("\(viewModel.posts[index].postShares) comments")
                Text("•")
                Text("\(viewModel.posts[index].postShares) shares")
            }
            .padding(.horizontal)
            .font(.system(size: 12))
            .foregroundColor(facebookBlue)
            
            Divider()
                .background(.white.opacity(0.5))
            
            // Post action buttons
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                HStack {
                    Image(systemName: "message")
                    Text("Comment")
                }
                Spacer()
                HStack {
                    Image("icone-messager-noir")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Send")
                }
                Spacer()
                HStack {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                Spacer()
            }
            .font(.system(size: 12))
            .foregroundColor(facebookBlue)
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(vm: FeedViewModel(), index: 0, isVideo: false)
    }
}
