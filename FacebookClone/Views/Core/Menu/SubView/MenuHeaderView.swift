//
//  MenuHeaderView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/26/24.
//

import SwiftUI

struct MenuHeaderView: View {
    
    private var profilePic: String
    private var fullName: String
    
    init(profilePic: String, fullName: String) {
        self.profilePic = profilePic
        self.fullName = fullName
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                HStack(spacing: 16) {
                    Image(profilePic)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(fullName)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.darkGray))
                    Spacer()
                    
                    Image(systemName: "chevron.down.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color(.systemGray3))
                }
                
                Divider()
                
                HStack(spacing: 16) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                    
                    Text("Create another profile")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                .foregroundColor(Color(.darkGray))
                .padding(.top, 4)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView(profilePic: "", fullName: "")
    }
}
