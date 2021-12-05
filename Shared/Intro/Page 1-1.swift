//
//  Page 1-1.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import Foundation
import SwiftUI

//struct ContentViewPageChapter1Page1: View {
//    var body: some View {
//        let text =
//        "Bright red and yellow leaves—the hallmark of autumn–crunch underneath your sneakers. You walk your dog Luna down a neighborhood street, without a care in the world. The wind whips against your face and the streets are eerily empty.\n\n As much as you enjoy walking Luna, you’re still looking forward to getting back home, making a snack and watching T.V.\n\nJust as you are about to circle back home, a strange shape emerges from the sky. It’s large and shaped like a saucer. Multi-colored lights blink all over the aircraft. It looks somewhat like a strangely shaped Christmas tree. Your first instinct is to run away, but you also want to see what the strange object is. "
//        NavigationView {
//            getPageView(mainText: text, firstChoice: AnyView(Page_1_2()), decision1: "Run Away!",  secondChoice: AnyView(Part_1_See_What_In_The_Sky()), decision2: "See what's in the sky.")
//
//
//    }.navigationViewStyle(StackNavigationViewStyle())
//            .padding()
//}
//
//}
//
//struct ContentViewPageChapter1Page1_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentViewPageChapter1Page1()
//    }
//}
struct ContentViewPageChapter1Page1: View {
    @State var showMenu = false

    var body: some View {
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        let text =
        "Bright red and yellow leaves—the hallmark of autumn–crunch underneath your sneakers. You walk your dog Luna down a neighborhood street, without a care in the world. The wind whips against your face and the streets are eerily empty.\n\n As much as you enjoy walking Luna, you’re still looking forward to getting back home, making a snack and watching T.V.\n\nJust as you are about to circle back home, a strange shape emerges from the sky. It’s large and shaped like a saucer. Multi-colored lights blink all over the aircraft. It looks somewhat like a strangely shaped Christmas tree. Your first instinct is to run away, but you also want to see what the strange object is. "
        let decision1 = "Run Away!"
        let firstChoice = AnyView(Page_1_2())
        let secondChoice = AnyView(Part_1_See_What_In_The_Sky())
        let decision2 = "See what's in the sky."
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, decision2: decision2,
                                     firstChoice: firstChoice, secondChoice: secondChoice)
        NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
            DisplayView(showMenu: self.$showMenu, view: storyView)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                                                .disabled(self.showMenu ? true : false)
            if self.showMenu {
                                  MenuView()
                    .frame(width: geometry.size.width/2)
                                      .transition(.move(edge: .leading))
                              }
                }.gesture(drag)
            }
            .navigationBarTitle("", displayMode: .inline)
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
            }

        }
    
struct ContentViewPageChapter1Page1_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewPageChapter1Page1()
    }
}
