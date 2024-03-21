//
//  AddNameView.swift
//  FacebookClone
//
//  Created by jmmanoza on 3/21/24.
//

import SwiftUI

struct AddNameView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = RegistrationViewModel()
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading, spacing: 24) {
                Text("What's your name?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.horizontal)
                
                Text("Enter the name you use in real life")
                    .font(.footnote)
                    .padding(.horizontal)
                    
                HStack {
                    PrimaryTextField(title: "First name", input: $viewModel.firstName, width: (proxy.size.width / 2) - 16)
                    Spacer()
                    PrimaryTextField(title: "First name", input: $viewModel.firstName, width: (proxy.size.width / 2) - 16)
                }
                .padding(.horizontal)
                
                NavigationLink {
                    Text("age view")
                } label: {
                    Button(action: {}) {
                        Text("Next")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: proxy.size.width - 20, height: 45)
                            .background(.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .padding(.horizontal)
                    }
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Already have an account?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: proxy.size.width - 20, height: 45)
                        .foregroundColor(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding(.horizontal)
                }
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "arrow.backward")
                            .imageScale(.large)
                    }
                }
            }
            .background(Color(.systemGray5))
            .frame(width: proxy.size.width)
        }
    }
}

struct AddNameView_Previews: PreviewProvider {
    static var previews: some View {
        AddNameView()
    }
}
