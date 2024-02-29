//
//  HeaderView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/4/24.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var isOpenProfile: Bool
    @Binding var isCreatePost: Bool
    
    var body: some View {
        HStack {

            Button(action: {
                isOpenProfile.toggle()
            }) {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
            }
            .frame(width: 40, height: 40)

            Button(action: {
                isCreatePost.toggle()
            }) {
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
        .padding(.bottom, 5)
        .padding(.top, -32)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(isOpenProfile: .constant(false), isCreatePost: .constant(false))
    }
}
