//
//  MainView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/3/21.
//
import SwiftUI
struct MainView: View {
    
    @Binding var showMenu: Bool
    @State var newV = AnyView(Text(""))
    let c = ContentViewPageChapter1Page1()
    var body: some View {
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
            c.getPageView2(mainText: text, firstChoice: AnyView(Page_1_2()), decision1: "Run Away!",  secondChoice: AnyView(Part_1_See_What_In_The_Sky()), decision2: "See what's in the sky.")
    }
    }
    
    
}
