//
//  startSympPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct startSympPage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                SearchPage()
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
                    Text("Ok, I have enough info for now, just start a symptoms assessment. ")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 100)
                        .frame(maxWidth: .infinity)
                }
                VStack(alignment: .trailing){
                    
                    NavigationLink(destination: SearchPage()) {
                        Text("start symptoms assessment")
                        .frame(width: 240)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                .padding(.top,60)
                    
                    Button(){
                    }
                label: {
                    Text("Track my symptoms")
                        .frame(width: 160)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                }.frame(maxWidth: .infinity)
                    .padding(.leading,50)
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
    
    struct startSympPage_Previews: PreviewProvider {
        static var previews: some View {
            startSympPage()
        }
    }
}
