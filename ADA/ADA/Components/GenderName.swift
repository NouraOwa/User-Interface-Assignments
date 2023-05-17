//
//  GenderName.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct GenderName: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                BDatePage()
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
                    Text("Are you Male\n or Female? ")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 100)
                        .frame(maxWidth: .infinity)
                }
                VStack(alignment: .trailing){
                    
                    Button(){
                    }
                label: {
                    Text("Male")
                        .frame(maxWidth: 70)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                .padding(.top,40)
                    
                    Button(){
                    }
                label: {
                    Text("Female")
                        .frame(maxWidth: 70)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                }.frame(maxWidth: .infinity)
                    .padding(.leading,240)
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
    
    struct GenderName_Previews: PreviewProvider {
        static var previews: some View {
            GenderName()
        }
    }
}
