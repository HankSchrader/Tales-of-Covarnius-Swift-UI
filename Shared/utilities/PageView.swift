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
