//
//  FeedbackPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct FeedbackPage: View {
    var body: some View {
        NavigationStack{
            VStack(){
                Spacer()
                VStack(alignment: .leading,spacing: 17){
                    Text("Give FeedBack")
                        .font(.title)
                        .padding(.horizontal)
                    Text("Please till me what you don't like about this question, so I can Improve! choose all options that apply to you and provide further information if necessary")
                        .foregroundColor(Color.gray)
                        .padding(.horizontal)
                    VStack(alignment: .leading,spacing: 3){
                        
                        checkbox( chText: "I don't understand the question.")
                        
                        checkbox( chText: "The question doesn't feel relevant to me.")
                        
                        checkbox( chText: "The answer don't apply to me.")
                        
                        checkbox( chText: "I want to choose multiple answers.")
                        
                        checkbox( chText: "The question is repetitive.")
                        VStack(alignment: .center){
                            textFieldfeed()
                                .padding(.horizontal)
                        }
                    }
                    VStack(alignment: .trailing){
                        NavigationLink(destination: WelcomePage()) {
                            Text("Assessment is Done")
                                .frame(width: 250)
                        }
                        .buttonStyle(.bordered)
                        .cornerRadius(15)
                        .padding(.leading,100)
                        
                        
                        
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
        struct textFieldfeed: View {
            @State var extra: String = ""
            var body: some View {
                VStack(alignment: .center, spacing: 15) {
                    
                    TextField("", text: $extra )
                        .padding(60)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.black, lineWidth: 1)
                        }
                        .frame(width:350)
                }
            }
        }
    }
    struct FeedbackPage_Previews: PreviewProvider {
        static var previews: some View {
            FeedbackPage()
        }
    }

