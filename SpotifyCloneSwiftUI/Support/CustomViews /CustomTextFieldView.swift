//
//  CustomTextFieldView.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 22/10/24.
//

import SwiftUI

struct CustomTextFieldView: View {
    @Binding var text: String
    @FocusState private var isTextFieldFocused: Bool
    let placeHolder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            if text.isEmpty {
                Text(placeHolder)
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                    .padding([.leading, .trailing], 20)
            }
            
            TextField("", text: $text)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium))
                .padding([.leading, .trailing], 20)
                .focused($isTextFieldFocused)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 32)
                .stroke(Color.gray, lineWidth: 1)
                .onTapGesture {
                    isTextFieldFocused = true
                }
        )
        .onTapGesture {
            isTextFieldFocused = true
        }
    }
}

