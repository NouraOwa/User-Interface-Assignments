//
//  IntroPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct IntroPage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                namePage()
            } .padding(.bottom, 170)
                .foregroundColor(Color.gray)
            VStack{
                HStack(){
                    Image("logoADA")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.leading)
                    Text("")
                        .frame(maxWidth: .infinity)
                }
                .padding(.leading)
                Text("Ada Provides a general \n symptoms assessment,\n whatever your symptoms and \n will also consider Covid-19 \n where relevant. for up-to-date \n guideline specific to Covid-19,\n please use the WHO website. ")
                    .font(.title2)
                VStack(alignment: .trailing){
                    Button(){
                    }
                label: {
                    Text("Learn more about WHO")
                        .frame(maxWidth: 270)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                .padding(.top,40)
                    Button(){
                    }
                label: {
                    Text("Continue using Ada")
                        .frame(maxWidth: 200)
                }
                .buttonStyle(.bordered)
                .clipShape(Capsule())
                    
                }
                .padding(.leading)
            }
        }
    }
    
        struct IntroPage_Previews: PreviewProvider {
            static var previews: some View {
                IntroPage()
            }
        }
    }
