//
//  Page 1-2.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Page_1_2: View {
    @State var showMenu = false
    @EnvironmentObject var log: ChapterLog
    var body: some View {
 
        let text =
        "You run away as fast as you can. You don’t need a closer look to know that aliens have just invaded Earth!\n\nVeering off the sidewalk, you cut through Mrs. Hill’s garden and run as fast as you can for home. Luna seems to be enjoying the run. The wind blows her golden fur back and her tongue hangs out to one side."
        let decision1 = Constants.ContinuePhrase
        let firstChoice = AnyView(Part_2_Run_Away().environmentObject(log))
        let storyView: StoryPayload = StoryPayload(text: text, firstChoice: firstChoice, decision1: decision1)
        DisplayView(showMenu: self.$showMenu, view: storyView)
        
            }
                        
        }
            


struct Page_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Page_1_2()
    }
}
