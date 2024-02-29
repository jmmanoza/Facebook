//
//  FriendRequestsRowView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/22/24.
//

import SwiftUI

struct FriendRequestsRowView: View {
    
    private var friendProfilePic: String
    private var friendName: String
    
    init(friendProfilePic: String, friendName: String) {
        self.friendProfilePic = friendProfilePic
        self.friendName = friendName
    }
    
    var body: some View {
        HStack(alignment: .top) {
            Image(friendProfilePic)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(friendName)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                HStack {
                    PrimaryButton(title: "Confirm", backgroundColor: .blue, foregroundColor: .white,
                                  cornerRadius: 8, customWidthSize: 120, customHeightSize: 35)
                    PrimaryButton(title: "Delete", backgroundColor: Color(.systemGray4), foregroundColor: Color(.darkGray),
                                  cornerRadius: 8, customWidthSize: 120, customHeightSize: 35)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct FriendRequestsRowView_Previews: PreviewProvider {
    static var previews: some View {
        FriendRequestsRowView(friendProfilePic: "", friendName: "")
    }
}
