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
            Text("")
            .padding(.top, 10)
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
                    VStack(alignment: .leading){
                        Text("Are you Male\n or Female? ")
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing)
                            .frame(maxWidth: .infinity)
                    }
                    NavigationLink(destination: BDatePage()) {
                        Text("Male")
                            .frame(maxWidth: 70)
                    }
                    .buttonStyle(.bordered)
                    .cornerRadius(15)
                    .padding(.top,40)
                    
                    NavigationLink(destination: BDatePage()) {
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
