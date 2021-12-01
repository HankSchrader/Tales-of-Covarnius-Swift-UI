//
//  Part_2_Wing_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Wing_It: View {
    var body: some View {
        VStack {
        Text("“Oh? Uhh, you mean this?” you sputter, staring at the crimson liquid. Regaining your confidence, you continue, “Ah yes of course, the electrolytic catalyst...thing. Just mix it with this over here...”\n\nThe table before you has a dozen different vials and beakers filled with volatile mixtures. You paralyzed. A hundred thoughts cross your mind. Which one to grab? How much to mix? What should I do?\n\n“Well?” the scientist says impatiently, “Mix it with which one?”\n\nYou better think fast, just grab the closest one! But there are two...which liquid should you mix it with?")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Bright_Green()) {
                       Text("Choose the fizzy yellow liquid.")
                   }
            .padding()
            NavigationLink(destination: Turn_Into_Frog()) {
                       Text("Grab the bright green liquid.")
                   }
            .padding()
    }
    }
}

struct Part_2_Wing_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Wing_It()
    }
}
