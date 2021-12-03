//
//  Part_1_Fetch_Key.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Fetch_Key: View {
    var body: some View {
        let text =
        "“I think sending Luna to get the key will be easiest,” you tell Chrono.\n\n“Well, if you really think so…” Chrono says. “I still think my plan would be easier.”\n\nYou help Luna squeeze through the bars of the cell. “Now go get the key!” you instruct Luna.\n\nLuna runs over to the desk, wagging her tail. “That’s it girl,” you praise, “fetch the key.”\n\nLuna picks the key up in her mouth and saunters back over to the cell. You take the key from her mouth and try to ignore the fact that it’s dripping with drool. You unlock the cell door, freeing Chrono and yourself. “Now let’s get out of here before that guard comes back!”"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Fetch_Key()))
        
        
    }
}

struct Part_1_Fetch_Key_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Fetch_Key()
    }
}
