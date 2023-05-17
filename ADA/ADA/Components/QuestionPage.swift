//
//  QuestionPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct QuestionPage: View {
    var body: some View {
        NavigationStack{
            Text("")
                .padding(.top, 10)
                .foregroundColor(Color.gray)
            VStack{
                Text("")
                    .padding(.bottom,150)
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
                    Text("How long has been\n this troubling you? ")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 120)
                        .frame(maxWidth: .infinity)
                }
                VStack(alignment: .leading){
                    NavigationLink(destination: FeedbackPage()) {
                        Text("Less than one day")
                            .frame(width: 200)
                    }
                    .buttonStyle(.bordered)
                    .cornerRadius(15)
                    .padding(.top,40)
                    
                    Button(){
                    }
                label: {
                    Text("one day to one week")
                        .frame(width: 200)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                    Button(){
                    }
                label: {
                    Text("one week to one month")
                        .frame(width: 200)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                    Button(){
                    }
                label: {
                    Text("one month to one year")
                        .frame(width: 200)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                    Button(){
                    }
                label: {
                    Text("more")
                        .frame(width: 200)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                    Button(){
                    }
                label: {
                    Text("Give a feedback")
                        .frame(width: 200)
                }
                    
                }.frame(maxWidth: .infinity)
                    .padding(.leading,130)
                Spacer()
                
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
    
    struct QuestionPage_Previews: PreviewProvider {
        static var previews: some View {
            QuestionPage()
        }
    }

