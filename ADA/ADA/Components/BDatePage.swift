//
//  BDatePage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct BDatePage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                startSympPage()
            } .padding(.top, 10)
                .foregroundColor(Color.gray)
            VStack{
                Text("")
                    .padding(.bottom,250)
                //Spacer()
                HStack(){
                    Image("logoADA")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.leading)
                    Text("")
                        .frame(maxWidth: .infinity)
                }
                //.padding(.leading)
                VStack(){
                    Text("And what is your date of birth? ")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 100)
                        .frame(maxWidth: .infinity)
                    birthdate()
                }
                VStack(alignment: .trailing){
                    
                    NavigationLink(destination: startSympPage()) {
                        Text("Select your Birthday")
                        .frame(maxWidth: 170)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                .padding(.top,40)
                    
                    
                    HStack(){
                        //Spacer()
                        //Text("")
                        //.padding(.top, 50)
                        Image("ADAR")
                            .resizable()
                            .frame(width: 70, height: 60)
                            .padding(.trailing,290)
                    }
                }
            }
        }
    }
            struct birthdate: View {
                @State var selectedDate = Date()
                
                var body: some View {
                    VStack {
                        DatePicker("", selection: $selectedDate, displayedComponents: .date)
                        
                    }.padding()
                }
            }
            struct BDatePage_Previews: PreviewProvider {
                static var previews: some View {
                    BDatePage()
                }
            }
        }
