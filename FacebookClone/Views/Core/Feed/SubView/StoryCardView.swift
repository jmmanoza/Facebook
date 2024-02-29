//
//  StoryFeedView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/5/24.
//

import SwiftUI

struct StoryFeedView: View {
    
    var myProfilePicUrl: String = ""
    var profilePicUrl: String = ""
    var storyPicUrl: String = ""
    var username: String = ""
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                myStoryCardView
                
                ForEach(0..<10) { _ in
                    mainView
                }
            }
        }
    }
}

private extension StoryFeedView {
    @ViewBuilder
    var mainView: some View {
        ZStack(alignment: .topLeading) {
            Image(storyPicUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 170)
                .cornerRadius(16, corners: .allCorners)
            
            VStack(alignment: .leading) {
                Image(profilePicUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color.blue, lineWidth: 3)
                    }
                Spacer()
                    .frame(height: 90)
                
                Text(username)
                    .foregroundColor(.white)
                    .font(.system(size: 12, weight: .bold))
            }
            .padding([.horizontal, .vertical], 12)
        }
    }
    
    @ViewBuilder
    var myStoryCardView: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color(.systemGray6))
                .frame(width: 100, height: 170)
            
            Image(myProfilePicUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 110)
                .cornerRadius(16, corners: [.topLeft, .topRight])
            
            VStack(spacing: 5) {
                Spacer()
                    .frame(height: 90)
                
                Image(systemName: "plus")
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .font(.system(size: 20, weight: .bold))
                    .overlay {
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth: 3)
                    }
                
                Text("Create\nStory")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 12, weight: .bold))
            }
            
        }
        .padding(.leading)
        .padding(.top, 5)
    }
}

struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoryFeedView()
    }
}
