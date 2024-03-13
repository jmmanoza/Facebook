//
//  LoginView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 3/13/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            
            GeometryReader { proxy in
                VStack(spacing: 70) {
                    Spacer()
                    Image("Facebook_Circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                    
                    VStack(spacing: 24) {
                        
                        PrimaryTextField(title: "Mobile number or email address",
                                         input: $loginVM.email,
                                         width: proxy.size.width - 32)
                        
                        PrimaryTextField(title: "Password",
                                         input: $loginVM.password,
                                         width: proxy.size.width - 32,
                                         isSecureText: true)
                        
                        Button(action: {}) {
                            Text("Login")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .frame(width: proxy.size.width - 32, height: 50)
                                .background(Color.blue)
                                .cornerRadius(25)
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {}) {
                            Text("Forgotten password?")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .frame(width: proxy.size.width - 32, height: 50)
                                .cornerRadius(25)
                                .foregroundColor(.black)
                        }
                        .padding(.top, -16)
                    }
                    
                    HStack { Spacer() }
                    
                    VStack(spacing: 24) {
                        Button(action: {}) {
                            Text("Create new account")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .frame(width: proxy.size.width - 32, height: 50)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(.blue,
                                                lineWidth: 1)
                                }
                        }
                        
                        HStack(spacing: 5) {
                            Image("meta")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 16, height: 16)
                            Text("Meta")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(Color(.darkGray))
                    }
                }
                .background(Color(.systemGray5))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
