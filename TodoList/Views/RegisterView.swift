//
//  RegisterScreenView.swift
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var password = ""
    @State var name = ""
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Your Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TextField("Email Adress", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Email Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                TLButton (
                    title: "Creat Account",
                    background: .green
                ) {
                    //Action
                }
                
            }
            Spacer()
        }
    }
}


#Preview {
    RegisterView()
}
