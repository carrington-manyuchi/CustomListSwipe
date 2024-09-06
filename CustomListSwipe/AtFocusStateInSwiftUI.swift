//
//  AtFocusStateInSwiftUI.swift
//  CustomListSwipe
//
//  Created by Manyuchi, Carrington C on 2024/09/05.
//

import SwiftUI

struct AtFocusStateInSwiftUI: View {
    
    
    enum OnboardingField {
        case username
        case password
    }
    
    //@FocusState private var usernameInFocus: Bool
    @State private var username = ""
    
    //@FocusState private var passwordInFocus: Bool
    @State private var password = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 25) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 44)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 44)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign up")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    AtFocusStateInSwiftUI()
}
