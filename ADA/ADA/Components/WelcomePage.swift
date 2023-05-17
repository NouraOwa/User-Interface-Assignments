//
//  WelcomePage.swift
//  ADA
//
//  Created by Noura Alowayid on 26/10/1444 AH.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(
                        AngularGradient(gradient: Gradient(colors:[Color.red, Color.blue]),
                                        center: .topLeading ,
                                        angle: .degrees(100 + 45))
                    )
                    .frame(width: 400, height: 900)
                VStack(alignment: .center, spacing: -50){
                    Image("logoADA")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("ADAR")
                        .resizable()
                    .frame(width: 100, height: 120)}
            VStack(alignment: .center) {
                        NavigationLink("START"){
                            beforeRegister()
                        } .padding(.top, 200)
                    .foregroundColor(Color.white)
                    }
                }
            }
        }
    }
    struct WelcomePage_Previews: PreviewProvider {
        static var previews: some View {
            WelcomePage()
        }
    }
