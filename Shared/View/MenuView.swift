//
//  MainMenu.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/3/21.
//

import SwiftUI
import SwiftUI

struct MenuView: View {
    @State private var showMenu = false
    let vnc = ViewNavigationController()
    let currentChaptersUnlocked = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters) ?? []
    var chapters: [Chapter] = []
    var sortedChapters: [Chapter] = []
    init() {
        // Gather up all the unlocked chapters.
        for chapter in currentChaptersUnlocked {
            chapters.append(Constants.chapterMap[chapter as! String] ?? Chapter(pageName: "Something Wrong", chapterTitle: "Bad", order: -1))
        }
        sortedChapters = chapters.sorted {
            $0.order < $1.order
        }
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                HStack {
                    
                    NavigationLink(destination: TitleView()
                                
                                    .navigationBarBackButtonHidden(true)) {
                        Text("Title Screen")
                    }
                }.padding(.bottom)
                    .foregroundColor(.gray)

                    ForEach(self.sortedChapters) { chapter in
                        HStack {
   
                            NavigationLink(destination: self.vnc.routeDecision(choice: chapter.pageName)
                                        .navigationBarBackButtonHidden(true)) {
                                Text("\(chapter.chapterTitle)")
                        }
                        
                    }.padding(.bottom)
                            .foregroundColor(.gray)
                }
                Spacer()
                
            }.padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                .zIndex(1)
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
