//
//  PageView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//

import SwiftUI
func getPageView(mainText: String,
                             firstChoice: AnyView,
                 decision1: String = Constants.ContinuePhrase,
                             secondChoice: AnyView = AnyView(Text("s")) ,
                             decision2: String = "") -> some View {
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    return VStack {
        

        Text(mainText)
            .fontWeight(.light)
            .if(isIPad) {
                view in
                view.font(.system(size: CGFloat(Constants.ipadFontSize)))
            }.padding()
            Spacer()
        
        NavigationLink(destination: firstChoice.navigationBarBackButtonHidden(decision2 != "")) {
                   Text(decision1)
               }
        .padding()
        if(decision2 != "") {
            NavigationLink(destination: secondChoice.navigationBarBackButtonHidden(true)) {
                       Text(decision2)
                    .padding()
            }
        }
    }
    .padding(.bottom)
    }

func getPageView(view: StoryPayload) -> some View {
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    return VStack {
        

        Text(view.text)
            .fontWeight(.light)
            .if(isIPad) {
                view in
                view.font(.system(size: CGFloat(Constants.ipadFontSize)))
            }.padding()
            Spacer()
        
        NavigationLink(destination: view.firstChoice.navigationBarBackButtonHidden(view.decision2 != "")) {
            Text(view.decision1)
               }
        .padding()
        if(view.decision2 != "") {
            NavigationLink(destination: view.secondChoice.navigationBarBackButtonHidden(true)) {
                Text(view.decision2)
                    .padding()
            }
        }
    }
    .padding(.bottom)
    }
struct DisplayView: View {
    @Binding var showMenu: Bool
    var view: StoryPayload
    var body: some View {

   
            Button(action: {
                        self.showMenu = true
                
                    }) {
                     
                    }

            getPageView(view: view)
        
    }
}
