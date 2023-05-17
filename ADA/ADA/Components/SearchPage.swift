//
//  SearchPage.swift
//  ADA
//
//  Created by Noura Alowayid on 27/10/1444 AH.
//

import SwiftUI

struct SearchPage: View {
    var body: some View {
        NavigationStack{
            NavigationLink("->"){
                QuestionPage()
            } .padding(.top, 10)
                .foregroundColor(Color.gray)
            VStack(alignment: .leading){
                // Text("")
                //.padding(.bottom)
                //Spacer()
                Text("Search for your symptoms")
                    .font(.title)
                    .padding(.leading)
                SearchBar(text: .constant(""))
                    .padding(.bottom,20)
                VStack(){
                    Group{
                        VStack(alignment: .leading){
                            Text("Fever")
                                .font(.title)
                                .bold()
                                .padding(.leading,10)
                            Text("fever")
                                .font(.subheadline)
                                .foregroundColor(Color.cyan)
                                .padding(.leading,10)
                            Text("A body Temperature of 38C or higher")
                                .font(.body)
                                .padding(.leading,10)
                            Button(){
                            }
                        label: {
                            Text("select symptoms")
                                .frame(width: 140)
                        }
                        .buttonStyle(.bordered)
                        .cornerRadius(15)
                            
                        .frame(maxWidth: .infinity)
                        .padding(.trailing, -220)
                        }
                        Divider()
                    }
                    VStack(alignment: .leading){
                        Text("Blocked nose")
                            .font(.title)
                            .bold()
                            .padding(.leading,10)
                        Text("high fever")
                            .font(.subheadline)
                            .foregroundColor(Color.cyan)
                            .padding(.leading,10)
                        Text("A body Temperature of 38C or higher")
                            .font(.body)
                            .padding(.leading,10)
                        Button(){
                        }
                    label: {
                        Text("select symptoms")
                            .frame(width: 140)
                    }
                    .buttonStyle(.bordered)
                    .cornerRadius(15)
                        
                    .frame(maxWidth: .infinity)
                    .padding(.trailing, -220)
                    }
                    Divider()
                }
                
                VStack(alignment: .leading){
                    Text("Headache")
                        .font(.title)
                        .bold()
                        .padding(.leading,10)
                    Text("periodic fever")
                        .font(.subheadline)
                        .foregroundColor(Color.cyan)
                        .padding(.leading,10)
                    Text("A body Temperature of 38C or higher")
                        .font(.body)
                        .padding(.leading,10)
                    Button(){
                    }
                label: {
                    Text("select symptoms")
                        .frame(width: 140)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                    
                .frame(maxWidth: .infinity)
                .padding(.trailing, -220)
                }
                Divider()
            }
            Spacer()
        }
    }
    
    struct SearchBar: View {
        @Binding var text: String
        
        @State private var isEditing = false
        
        var body: some View {
            HStack {
                TextField("Search ...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
                
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
                        
                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    //.animation(.default)
                }
            }
        }
    }
    
    struct SearchPage_Previews: PreviewProvider {
        static var previews: some View {
            SearchPage()
        }
    }
}
