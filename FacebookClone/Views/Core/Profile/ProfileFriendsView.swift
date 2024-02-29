//
//  ProfileFriendsView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/12/24.
//

import SwiftUI

struct ProfileFriendsView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    private var viewWidth: CGFloat
    
    @State var friendsName = ["Franko Loko", "Choco Loko", "Fapor ito", "Por pavor", "Loko Loko"]
    @State var friendsProfile = ["profilePic1", "profilePic2", "profilePic3", "profilePic4","profilePic5"]
    
    init(viewWidth: CGFloat) {
        self.viewWidth = viewWidth
    }
    
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    Text("Friends")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Text("\(friendsName.count) friends")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                
                // MARK: Find Friends
                Button(action: {}) {
                    Text("Find Friends")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
            }
            
            // MARK: Friends GridList
            LazyVGrid(columns: gridItems) {
                ForEach(Array(zip(friendsProfile, friendsName)), id: \.0) { friendsInfo in
                    VStack {
                        Image(friendsInfo.0)
                            .resizable()
                            .scaledToFill()
                            .frame(width: (viewWidth / 3) - 20,
                                   height: (viewWidth / 3) - 20)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        Text(friendsInfo.1)
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
            }
            
            // MARK: See All Friends
            Button(action: {}) {
                Text("See all friends")
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(width: (viewWidth - 30),
                           height: 45)
                    .background(Color(.systemGray5))
                    .foregroundColor(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

struct ProfileFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFriendsView(viewWidth: 0)
    }
}
