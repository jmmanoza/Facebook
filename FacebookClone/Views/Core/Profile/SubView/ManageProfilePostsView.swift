//
//  ManageProfilePostsView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/14/24.
//

import SwiftUI

struct ManageProfilePostsView: View {
    
    private var viewWidth: CGFloat
    
    init(viewWidth: CGFloat) {
        self.viewWidth = viewWidth
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // MARK: Post Filter
            HStack {
                Text("Posts")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Button(action: {}) {
                    Text("Filters")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
            }
            .padding(.vertical, 6)
            .padding(.horizontal)
            
            // MARK: Create Post
            HStack {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())

                Button(action: {}) {
                    HStack {
                        Text("What's on your mind?")
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .overlay {
                        Capsule()
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
                    .padding(.leading, 5)
                    .padding(.trailing, 15)
                    .foregroundColor(Color(.darkGray))
                }
                
                Button(action: {}) {
                    Image(systemName: "photo.on.rectangle.angled")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal)
            
            // MARK: Reels and Live
            HStack(spacing: 8) {
                Spacer()
                    .frame(width: 8)
                PrimaryButton(title: "Reel", iconName: "play.rectangle.fill", backgroundColor: .white, foregroundColor: .black, cornerRadius: 20, iconForegroundColor: Color.red)
                    
                PrimaryButton(title: "Live", iconName: "video.fill", backgroundColor: .white, foregroundColor: .black, cornerRadius: 20, iconForegroundColor: Color.red)
                Spacer()
            }
            .frame(width: viewWidth, height: 60)
            .background(Color(.systemGray6))
            
            // MARK: Manage Posts
            Button(action: {}) {
                HStack {
                    Image(systemName: "text.bubble.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                    
                    Text("Manage Posts")
                        .font(.headline)
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .frame(width: (viewWidth - 30) ,height: 45)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .padding()
            }
        }
        .padding(.vertical, 6)
    }
}

struct ManageProfilePostsView_Previews: PreviewProvider {
    static var previews: some View {
        ManageProfilePostsView(viewWidth: 0)
    }
}
