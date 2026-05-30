//
//  LoginView.swift
//  SpendWise
//
//  Created by jojo on 29/05/2026.
//

import SwiftUI

struct LoginView : View{
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body : some View{
        //Main VStack
        VStack{
            VStack(spacing : 16){
                Image("AppLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                
                Text("Welcome Back")
                    .font(AppFonts.title)
                
                Text("Sign in to continue managing your expenses")
                    .font(AppFonts.body)
                    .foregroundColor(Color.appTextSecondary)
            }
            
            //For the email and password field
            VStack(alignment : .leading, spacing: 15){
                Text("Email")
                    .font(AppFonts.body)
                TextField("your.email@example.com", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(Radius.medium)
                        .textInputAutocapitalization(.never)
                                
                Text("Password")
                    .font(AppFonts.body)
                SecureField("Enter your password", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(Radius.medium)
            }
            .padding(.horizontal, 30)
            .padding(.top, 30)
            
            
            VStack(alignment: .center, spacing: 20){
                PrimaryButton(title: "Sign In") {
                    print("Clicked Sign in")
                }
                
                HStack {
                    Rectangle()
                        .fill(Color(.systemGray4))
                        .frame(height: 1)
                    
                    Text("Or continue with")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: true, vertical: false) // 2. Forces it to stay on one line
                        .padding(.horizontal, 10)
                    
                    Rectangle()
                        .fill(Color(.systemGray4))
                        .frame(height: 1)
                }.padding(.horizontal, 30)
            }.padding(.top, 30)
        }
    }
}
