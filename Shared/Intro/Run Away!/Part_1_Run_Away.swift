//
//  Page 1-2.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Page_1_2: View {
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
        "You run away as fast as you can. You don’t need a closer look to know that aliens have just invaded Earth!\n\nVeering off the sidewalk, you cut through Mrs. Hill’s garden and run as fast as you can for home. Luna seems to be enjoying the run. The wind blows her golden fur back and her tongue hangs out to one side."
        let decision1 = "Run Away!"
        let firstChoice = AnyView(AnyView(Part_2_Run_Away()))
        let secondChoice = AnyView(Text(""))
        let decision2 = ""
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, decision2: decision2,
                                     firstChoice: firstChoice, secondChoice: secondChoice)
      
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

struct Page_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Page_1_2()
    }
}
