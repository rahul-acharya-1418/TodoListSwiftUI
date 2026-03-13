//
//  LoginView.swift
//  TodoList
//
//  Created by Rahul Acharya on 18/02/26.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            
                VStack (spacing: 0){
                    
                    // Header
                    HeaderView()
                    
                    // Login Form
                    Form {
                        TextField("Email Address", text: $email)
                            .textFieldStyle(DefaultTextFieldStyle())
                        SecureField("Password", text: $password)
                            .textFieldStyle(DefaultTextFieldStyle())
                        
                        Button {
                            // attempt log in
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                
                                Text("Log In")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        .frame(height: 30)

                    }
                    
                    // Create Account
                    
                    VStack {
                        Text("New arround here?")
                        
                        NavigationLink("Create An Account") {
                            RegisterView()
                        }
                    }
                    .padding(.bottom, 50)
                    Spacer()
                }
        }
    }
}

#Preview {
    LoginView()
}
