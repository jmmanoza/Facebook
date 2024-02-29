//
//  CreatePostView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/4/24.
//

import SwiftUI

struct CreatePostView: View {
    @Binding var isCreatePost: Bool
    @Binding var postCaption: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    isCreatePost.toggle()
                }) {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.black)
                }
                
                Text("Create post")
                    .font(.headline)
                
                Spacer()
                PrimaryButton(title: "Post",
                              backgroundColor: postCaption.count > 0 ? Color.blue: Color(.systemGray5),
                              foregroundColor: postCaption.count > 0 ? Color.white: Color(.darkGray),
                              cornerRadius: 8)
                    .disabled(postCaption.count <= 0)
               
            }
            .padding(.horizontal)
            
            Divider()
            
            HStack(alignment: .top) {
                Image("profilePic1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Hello world.")
                    
                    HStack {
                        PrimaryButton(title: "Friends", iconName: "person.2.fill",
                                      backgroundColor: Color(.systemGray6),
                                      foregroundColor: .blue, cornerRadius: 10, iconForegroundColor: .blue, traillingText: "▾")
                        PrimaryButton(title: "Album",
                                      backgroundColor: Color(.systemGray6),
                                      foregroundColor: .blue, cornerRadius: 10, iconForegroundColor: .blue, traillingText: "▾")
                    }
                    
                    PrimaryButton(title: "Off", iconName: "camera",
                                  backgroundColor: Color(.systemGray6),
                                  foregroundColor: .blue, cornerRadius: 10, iconForegroundColor: .blue, traillingText: "▾")
                    
                    
                }
                .padding(.horizontal)
            }
            .padding()
            
            TextEditor(text: $postCaption)
                .padding(.top, 8)
                .padding(.horizontal)
            
            Spacer()
            
            Divider()
            
            HStack(spacing: 40) {
                Button(action: {}, label: {
                    Image(systemName: "photo.fill.on.rectangle.fill")
                        .foregroundColor(.green)
                        .frame(maxWidth: .infinity)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "person.fill")
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                })
  
                Button(action: {}, label: {
                    Image(systemName: "face.smiling")
                        .foregroundColor(.yellow)
                        .frame(maxWidth: .infinity)
                })
       
                Button(action: {}, label: {
                    Image("pin")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.red)
                })
          
                Button(action: {}, label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .foregroundColor(Color(.darkGray))
                        .frame(maxWidth: .infinity)
                })
            }
            .padding(.top)
            .padding(.horizontal, 50)
        }
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView(isCreatePost: .constant(false), postCaption: .constant(""))
    }
}
