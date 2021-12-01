//
//  Page 1-2.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Page_1_2: View {
    var body: some View {
      
            VStack {
        Text("You run away as fast as you can. You don’t need a closer look to know that aliens have just invaded Earth!\n\nVeering off the sidewalk, you cut through Mrs. Hill’s garden and run as fast as you can for home. Luna seems to be enjoying the run. The wind blows her golden fur back and her tongue hangs out to one side.")
                    .fontWeight(.light)
                    .padding()
                    Spacer()
            
                NavigationLink(destination: Part_2_Run_Away()) {
                       Text("Continue")
                }.padding()
                
            }
        
    }
}

struct Page_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Page_1_2()
    }
}
