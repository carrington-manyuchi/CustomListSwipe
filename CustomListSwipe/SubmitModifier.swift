//
//  SubmitModifier.swift
//  CustomListSwipe
//
//  Created by Manyuchi, Carrington C on 2024/09/06.
//

import SwiftUI

struct SubmitModifier: View {
    
    @State private var text: String = ""
    var body: some View {
        
        VStack {
            TextField("Enter your name...", text: $text)
                .padding(.leading)
                .frame(height: 44)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console")
                }
        }
        .padding(40)
    }
}

#Preview {
    SubmitModifier()
}
