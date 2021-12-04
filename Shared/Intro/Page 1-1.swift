//
//  Page 1-1.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import Foundation
import SwiftUI

struct ContentViewPageChapter1Page1: View {
    @State var showMenu = false
    @State var firstChoice = AnyView(Text(""))


    var body: some View {
        let drag = DragGesture()
                 .onEnded {
                     if $0.translation.width < -100 {
                         withAnimation {
                             self.showMenu = false
                         }
                     }
                 }
             
            NavigationView {
                 GeometryReader { geometry in
                     ZStack(alignment: .leading) {
                         VStack{
                         Button(action: {
                             withAnimation {
                                self.showMenu = true
                             }
                         }) {
                             Text("Show Menu")
                         }
                         let text =
                         "Bright red and yellow leaves—the hallmark of autumn–crunch underneath your sneakers. You walk your dog Luna down a neighborhood street, without a care in the world. The wind whips against your face and the streets are eerily empty.\n\n As much as you enjoy walking Luna, you’re still looking forward to getting back home, making a snack and watching T.V.\n\nJust as you are about to circle back home, a strange shape emerges from the sky. It’s large and shaped like a saucer. Multi-colored lights blink all over the aircraft. It looks somewhat like a strangely shaped Christmas tree. Your first instinct is to run away, but you also want to see what the strange object is. "
                         getPageView2(mainText: text, firstChoice: AnyView(Page_1_2()), decision1: "Run Away!",  secondChoice: AnyView(Part_1_See_What_In_The_Sky()), decision2: "See what's in the sky.")
                             
                     }
                             .frame(width: geometry.size.width, height: geometry.size.height)
                             .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                             .disabled(self.showMenu ? true : false)
                         if self.showMenu {
                             MenuView()
                                 .frame(width: geometry.size.width/2)
                                 .transition(.move(edge: .leading))
                         }
                                 
                     }
                         .gesture(drag)
                 }
                     
             }
            .navigationBarTitle("Side Menu", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
         }
    

    func getPageView2(mainText: String,
                                 firstChoice: AnyView,
                     decision1: String = Constants.ContinuePhrase,
                                 secondChoice: AnyView = AnyView(Text("s")) ,
                                 decision2: String = "") -> some View {
        let isIPad = UIDevice.current.userInterfaceIdiom == .pad
        return VStack {
            ScrollView {
                Text(mainText)
                    .fontWeight(.light)
                    .if(isIPad) {
                        view in
                        view.font(.system(size: CGFloat(Constants.ipadFontSize)))
                    }.padding()
            }

                Spacer()
            
            NavigationLink(destination: MainView(showMenu: self.$showMenu, newV: self.firstChoice)) {
                       Text(decision1)
                   }
            .padding()
            if(decision2 != "") {
                NavigationLink(destination: secondChoice) {
                           Text(decision2)
                        .padding()
                }
            }
        }
        .padding(.bottom)
        }

}
    
func getPageView(mainText: String,
                             firstChoice: AnyView,
                 decision1: String = Constants.ContinuePhrase,
                             secondChoice: AnyView = AnyView(Text("s")) ,
                             decision2: String = "") -> some View {
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    return VStack {
        ScrollView {
            Text(mainText)
                .fontWeight(.light)
                .if(isIPad) {
                    view in
                    view.font(.system(size: CGFloat(Constants.ipadFontSize)))
                }.padding()
        }

            Spacer()
        
        NavigationLink(destination: firstChoice) {
                   Text(decision1)
               }
        .padding()
        if(decision2 != "") {
            NavigationLink(destination: secondChoice) {
                       Text(decision2)
                    .padding()
            }
        }
    }
    .padding(.bottom)
    }

struct ContentViewPageChapter1Page1_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewPageChapter1Page1()
    }
}
