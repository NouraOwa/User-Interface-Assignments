//
//  ConfirmPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct ConfirmPage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                CreateAccountPage()
            } .padding(.top, 10)
                .foregroundColor(Color.gray)
            VStack(){
                Spacer()
                VStack(alignment: .leading,spacing: 17){
                    Text("Confirm You're ready")
                        .font(.title)
                        .padding(.horizontal)
                    Text("Please read our Privacy Policy and confirm the following declarations, Consents can be withdrawn in Setting any time")
                        .foregroundColor(Color.gray)
                        .padding(.horizontal)
                    VStack(alignment: .leading){
                        checkbox( chText: "I agree to Ada's Terms & Conditions, and confirm that I am at least 16 years old.")
                        
                        
                        checkbox( chText: "I consent to Ada using any personal health data, I voluntarily share here so Ada can create (3,2) and personalize (3.3) my account and provide health assessment and guidance.")}
                    
                }
                VStack(alignment: .center, spacing: 20){
                    Button(){
                    }
                label: {
                    Text("Continue with email")
                        .frame(maxWidth: 300)
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(15)
                .padding(.top,40)
                    Button(){
                    }
                label: {
                    Text("Continue with Apple")
                        .frame(maxWidth: 300)
                }
                .buttonStyle(.bordered)
                .clipShape(Capsule())
                    
                    Button(){
                    }
                label: {
                    Text("Continue with Facebook")
                        .frame(maxWidth: 300)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                    
                    Button(){
                    }
                label: {
                    Text("Already have an account? Sign In")
                        .frame(maxWidth: 300)
                }
                    
                    HStack(){
                        Image("ADAR")
                            .resizable()
                            .frame(width: 70, height: 60)
                            .padding(.trailing,200)
                        
                    }
                }
                
            }
        }
    }
    
    
    
    
    
    struct iOSCheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            // 1
            Button(action: {
                
                // 2
                configuration.isOn.toggle()
                
            }, label: {
                HStack {
                    // 3
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                        .resizable()
                        .frame(width: 20, height: 25)
                        .foregroundColor(Color.blue)
                    //.background(Color.teal)
                        .foregroundColor(Color.gray)
                    configuration.label
                }
            })
        }
    }
    
    struct checkbox: View{
        @State var isOn: Bool = true
        var chText: String
        var body: some View {
            Toggle(isOn: $isOn, label:{
                Text(chText)
                .multilineTextAlignment(.leading)})
            .toggleStyle(iOSCheckboxToggleStyle())
            .foregroundColor(Color.gray)
            .padding()
        }
    }
    struct ConfirmPage_Previews: PreviewProvider {
        static var previews: some View {
            ConfirmPage()
        }
    }
    
}
