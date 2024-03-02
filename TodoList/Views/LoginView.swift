//
//  LoginScreen.swift
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginVieModel()
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                Form {
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Email Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)

                    TLButton (
                        title: "Login In ",
                        background: .blue
                    ) {
                        //Action
                    }

                }
                VStack {
                    Text("New around here?")
                    NavigationLink("Creat An Account", destination: RegisterView())
                    
                }.padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
