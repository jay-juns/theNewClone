//
//  LoginView.swift
//  theNewClone
//
//  Created by junseok Kim on 2023/08/28.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("yarn")
                    .resizable()
                    .scaledToFit()
                    .frame(width:120, height:120)
                    .padding()
                VStack {
                    TextField ("이메일을 입력하세요", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThreadTextfieldModifier())
                    
                    SecureField("비밀번호를 입력하세요", text: $password)
                        .modifier(ThreadTextfieldModifier())
                }
                
                NavigationLink {
                    Text("비밀번호를 잊으셨나요?")
                } label: {
                    Text("비밀번호를 잊으셨나요?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing )
                }
                .padding(.bottom)
                
                Button {
                    
                } label: {
                    Text("로그인")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:352, height:44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("등록하기")
                } label: {
                    HStack(spacing: 3) {
                        Text("계정이 없으세요?")
                        
                        Text("회원가입")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
