//
//  LoginViewModel.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 3/13/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
}
