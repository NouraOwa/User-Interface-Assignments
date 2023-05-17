//
//  namePage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct namePage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                GenderName()
            } .padding(.top, 10)
                .foregroundColor(Color.gray)
            VStack{
                Text("")
                    .padding(.bottom,250)
                Spacer()
                HStack(){
                    Image("logoADA")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.leading)
                    Text("")
                        .frame(maxWidth: .infinity)
                }
                .padding(.leading)
                VStack(alignment: .leading){
                    Text("Great! What is your\n name? ")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,90)
                        .frame(maxWidth: .infinity)
                }
                VStack(alignment: .trailing){
                    textFieldName()
                    Button(){
                    }
                label: {
                    Text("Send")
                        .frame(maxWidth: 70)
                        .foregroundColor(Color.gray)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                .padding(.top,40)
                    Spacer()
                }
                HStack(){
                    Spacer()
                    //Text("")
                    //.padding(.top, 20)
                    Image("ADAR")
                        .resizable()
                        .frame(width: 70, height: 60)
                        .padding(.trailing,290)
                }
            }
        }
    }
            struct textFieldName: View {
                @State var name: String = ""
                var body: some View {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        TextField("name", text: $name )
                            .padding(10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(.black, lineWidth: 2)
                            }
                            .frame(width:330)
                    }
                }
                struct namePage_Previews: PreviewProvider {
                    static var previews: some View {
                        namePage()
                    }
                }
            }
        }
