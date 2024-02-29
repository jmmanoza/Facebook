//
//  MenuView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/26/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var profilePic: String = "profilePic1"
    @State var fullName: String = "Hello World."
    @State var isShowLogOutAlert = false
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    MenuHeaderView(profilePic: profilePic, fullName: fullName)
                    
                    MenuShortcutView(isShowLogOutAlert: $isShowLogOutAlert,
                                     viewWidth: proxy.size.width)
                }
                .background(Color(.systemGray6))
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Menu")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(spacing: 16) {
                            Button(action: {}) {
                                Image(systemName: "gearshape.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                            }
                            
                            Button(action: {}) {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                            }
                        }
                        .foregroundColor(Color.black)
                        .font(.system(size: 24, weight: .bold))
                    }
                }
                .alert("Log out of your account?", isPresented: $isShowLogOutAlert) {
                    Button("Log Out") {}
                    Button("Cancel", role: .cancel) {}
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
