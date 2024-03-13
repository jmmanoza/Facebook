//
//  PrimaryTextField.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 3/13/24.
//

import SwiftUI

struct PrimaryTextField: View {
    
    private var title: String
    @Binding var input: String
    private var width: CGFloat
    private var isSecureText: Bool? = false
    
    init(title: String, input: Binding<String>, width: CGFloat, isSecureText: Bool? = nil) {
        self.title = title
        _input = input
        self.width = width
        self.isSecureText = isSecureText ?? false
    }
    
    var body: some View {
        if self.isSecureText ?? false {
            SecureField(title,
                      text: $input)
                .textInputAutocapitalization(.never)
                .padding(12)
                .background(.white)
                .frame(width: width, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } else {
            TextField(title,
                      text: $input)
                .textInputAutocapitalization(.never)
                .padding(12)
                .background(.white)
                .frame(width: width, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct PrimaryTextField_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryTextField(title: "Mobile number or email address", input: .constant(""), width: UIScreen.main.bounds.width - 32)
    }
}
