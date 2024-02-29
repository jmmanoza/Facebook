//
//  ProfileOptionsView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/10/24.
//

import SwiftUI

struct ProfileOptionsView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 24) {
                
//                Button(action: {}) {
//                    Text("Photos")
//                        .font(.headline)
//                        .fontWeight(.semibold)
//                        .foregroundColor(isSelected ? .blue: Color(.darkGray))
//                }

                Text("Posts")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                    .padding(.vertical, 7)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 30))

                Text("Photos")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.darkGray))

                Text("Reels")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.darkGray))
            }
            .padding(.horizontal)
            Divider()
        }
    }
}

struct ProfileOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOptionsView()
    }
}
