//
//  ProfileHeaderView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/6/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    private var width: CGFloat
    
    init(width: CGFloat) {
        self.width = width
    }
    
    var body: some View {
        VStack {
            Image("cover_picture")
                .resizable()
                .scaledToFill()
                .frame(width: width,
                       height: 260)
            
            Color.white
                .frame(height: 180)
        }
        .overlay {
            VStack(alignment: .leading) {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth: 3)
                    }
                    .padding(.top, 170)
                
                Text("Hello world.")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("12 ")
                    .font(.headline) +
                Text("Friends")
                    .font(.headline)
                    .foregroundColor(.gray)
                
                HStack {
                    PrimaryButton(title: "Add to Story",
                                             iconName: "plus",
                                             backgroundColor: .blue,
                                             foregroundColor: .white)
                    
                    PrimaryButton(title: "Edit Profile",
                                             iconName: "pencil",
                                             backgroundColor: Color(.systemGray5),
                                             foregroundColor: Color(.darkGray))
                    
                    PrimaryButton(title: "",
                                             iconName: "ellipsis",
                                             backgroundColor: Color(.systemGray5),
                                             foregroundColor: Color(.darkGray))
                }
                
                HStack { Spacer() }
            }
            .padding(.horizontal)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(width: 0)
    }
}
