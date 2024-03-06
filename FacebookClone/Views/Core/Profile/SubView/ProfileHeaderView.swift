//
//  ProfileHeaderView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/6/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @StateObject private var viewModel: FeedViewModel
    private var width: CGFloat
    @State private var showProfileImagePicker: Bool = false
    @State private var showCoverImagePicker: Bool = false
    
    init(vm: FeedViewModel, width: CGFloat) {
        self.width = width
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack {
            Button(action: {
                showCoverImagePicker.toggle()
            }) {
                viewModel.coverImage
//                    .resizable()
                    .scaledToFill()
                    .frame(width: width,
                           height: 260)
            }
            
            Color.white
                .frame(height: 180)
        }
        .overlay {
            VStack(alignment: .leading) {
                Button(action: {
                    showProfileImagePicker.toggle()
                }) {
                    viewModel.profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(Color(.systemGray6), lineWidth: 3)
                        }
                        .padding(.top, 170)
                }
                
                Text("\(viewModel.users[0].firstName) \(viewModel.users[0].lastName)")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("\(viewModel.users[0].friendsIds.count) ")
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
        .sheet(isPresented: $showProfileImagePicker) {
            ImagePicker(sourceType: .photoLibrary,
                        selectedImage: $viewModel.selectedImage)
        }
        .sheet(isPresented: $showCoverImagePicker) {
            ImagePicker(sourceType: .photoLibrary,
                        selectedImage: $viewModel.selectedCoverImage)
        }
        .onChange(of: viewModel.selectedImage) { newValue in
            guard let image = newValue else { return }
            
            if newValue != nil {
                viewModel.pickedImage(imageItem: image)
            }
        }
        .onChange(of: viewModel.selectedCoverImage) { newValue in
            guard let image = newValue else { return }
            
            if newValue != nil {
                viewModel.pickedCoverImage(coverImage: image)
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(vm: FeedViewModel(), width: 0)
    }
}
