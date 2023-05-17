//
//  beforeRegister.swift
//  ADA
//
//  Created by Noura Alowayid on 26/10/1444 AH.
//

import SwiftUI

struct beforeRegister: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                ConfirmPage()
            } .padding(.top, 10)
                .foregroundColor(Color.gray)
            
            VStack(alignment: .leading){
                Spacer()
                VStack(alignment: .center,spacing: 20){
                    Image("Image")
                        .resizable()
                        .padding(.top)
                        .frame(width: 400, height: 350)
                    VStack(alignment: .center,spacing: 10){
                        Text("Check your symptoms")
                            .font(.title)
                        Text("Take a few moments to complete your Ada assessment")
                            .font(.title3)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                        // .frame(width: 400, height: 50)
                            .padding(.horizontal)
                        Spacer()
                    }
                    
                    Button(){
                    }
                label: {
                    Text("Create your account")
                        .frame(maxWidth: 300)
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(15)
                    Button(){
                    }
                label: {
                    Text("Log in")
                        .frame(maxWidth: 300)
                }
                .buttonStyle(.bordered)
                .clipShape(Capsule())
                }
                
                VStack(alignment: .leading){
                    Image("ADAR")
                        .resizable()
                        .frame(width: 70, height: 60)
                        .padding()
                    
                    
                }
            }
        }
    }
    struct beforeRegister_Previews: PreviewProvider {
        static var previews: some View {
            beforeRegister()
        }
    }
    
}
