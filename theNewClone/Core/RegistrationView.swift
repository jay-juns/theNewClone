//
//  RegistrationView.swift
//  theNewClone
//
//  Created by junseok Kim on 2023/08/28.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    var body: some View {
        VStack {
            Spacer()
            Image("yarn")
                .resizable()
                .scaledToFit()
                .frame(width:120, height:120)
                .padding()
            VStack {
                TextField ("이메일을 입력하세요", text: $email)
                    .modifier(ThreadTextfieldModifier())
                
                SecureField("비밀번호를 입력하세요", text: $password)
                    .modifier(ThreadTextfieldModifier())
                
                TextField ("이름을 입력하세요", text: $fullname)
                    .modifier(ThreadTextfieldModifier())
                
                TextField ("닉네임을 입력하세요", text: $username)
                    .modifier(ThreadTextfieldModifier())
            }
            
            Button {
                
            } label: {
                Text("회원가입")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width:352, height:44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing: 3) {
                    Text("준비되셨나요?")
                    
                    Text("로그인")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
