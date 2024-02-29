//
//  StoryFeedView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/5/24.
//

import SwiftUI

struct StoryFeedView: View {
    
    @StateObject private var viewModel: FeedViewModel
    
    init(vm: FeedViewModel) {
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                myStoryCardView
                
                ForEach(0..<viewModel.friends.count) { index in
                    setUpMainView(feedVM: viewModel, index: index)
                }
            }
        }
    }
}

private extension StoryFeedView {
    @ViewBuilder
    func setUpMainView(feedVM: FeedViewModel, index: Int) -> some View {
        ZStack(alignment: .topLeading) {
            Image(feedVM.friends[index].coverImageName ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 170)
                .cornerRadius(16, corners: .allCorners)
            
            VStack(alignment: .leading) {
                Image(feedVM.friends[index].profileImageName ?? "")
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
                
                Text("\(feedVM.friends[index].firstName) \(feedVM.friends[index].lastName)")
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
            
            Image(viewModel.users[0].profileImageName ?? "")
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
        StoryFeedView(vm: FeedViewModel())
    }
}
