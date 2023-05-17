//
//  CreateAccountPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct CreateAccountPage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                IntroPage()
            } .padding(.top, 10)
                .foregroundColor(Color.gray)
            VStack(){
                Text("")
                    .padding(.top, 60)
                VStack(alignment: .leading,spacing: 17){
                    Text("Create your account")
                        .font(.title)
                    Text("Enter your email address and choose a strong password")
                        .foregroundColor(Color.gray)
                    Text("Email")
                        .font(.title2)
                        .bold()
                    textFieldEmail()
                    Text("We'll send a verification email to confirm.")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    Text("Password")
                        .font(.title2)
                        .bold()
                    textFieldPass()
                    //.padding(.bottom,40)
                    VStack(alignment: .center, spacing: 24){
                        NavigationLink(destination: IntroPage()) {
                            Text("Continue")
                                .frame(maxWidth: 300)
                        }
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(15)
                           // .frame(maxWidth: 300)
                            .padding(10)
                    }
                    .cornerRadius(50)
                    .buttonStyle(.borderedProminent)
                        
                        Button(){
                        }
                    label: {
                        Text("Already have an account? Sign In")
                            .frame(maxWidth: 300)
                    }
                        Spacer()
                            .padding(.horizontal)
                        
                    }
                }
            }
        }
    }
    struct textFieldEmail: View {
        @State var email: String = ""
        var body: some View {
            VStack(alignment: .leading, spacing: 15) {
                
                TextField("Email", text: $email )
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(.black, lineWidth: 2)
                    }
                    .frame(width:330)
            }
        }
    }
    struct textFieldPass: View {
        @State var password: String = ""
        @State var showPassword: Bool = false
        var body: some View {
            HStack {
                Group {
                    if showPassword {
                        TextField("",
                                  text: $password,
                                  prompt: Text(""))
                    } else {
                        SecureField("Password",
                                    text: $password)
                    }
                }
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.black, lineWidth: 2)
                }
                .frame(width:330)
                Button { // add this new button
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.black)
                }
                
            }
            
        }
    }
    
    struct CreateAccountPage_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccountPage()
        }
    }

