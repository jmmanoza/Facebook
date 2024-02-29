//
//  VideoView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/27/24.
//

import SwiftUI

struct VideoView: View {
    
    let videoURL = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 24) {
                                Text("For you")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.blue)
                                    .padding(.horizontal)
                                    .padding(.vertical, 7)
                                    .background(Color(.systemGray6))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                
                                Text("Live")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(.darkGray))
                                
                                Text("Gaming")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(.darkGray))
                                
                                Text("Reels")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(.darkGray))
                                
                                Text("Following")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(.darkGray))
                            }
                        }
                        .padding(.leading)
                        
                        Divider()
                        
                        ForEach(0..<3) { _ in
                            PostView(myProfilePic: "profilePic",
                                     myUsername: "Hello world",
                                     date: "1 day",
                                     postCaption: "Nice office",
                                     postImageUrl: "office",
                                     postLikeCount: "109",
                                     postCommentCount: "87",
                                     postShareCount: "40",
                                     isVideo: true,
                                     videoURL: self.videoURL)
                            
                            DividerView(width: proxy.size.width, height: 6)
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Video")
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
                        .foregroundColor(Color.black)
                        .font(.system(size: 24, weight: .bold))
                    }
                }
            }
        }
    }
}

//struct TopMenuButton: View {
//
//    private var title: String
//    @State var isSelected: Bool = false
//
//    init(title: String) {
//        self.title = title
//    }
//
//    var body: some View {
//        HStack(spacing: 24) {
//
//            Text(title)
//                .font(.headline)
//                .fontWeight(.semibold)
//                .if(isSelected, transform: { view in
//                    view.foregroundColor(.blue)
//                    view.backgroundColor(Color(.systemGray6))
//                })
//        }
//    }
//}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
