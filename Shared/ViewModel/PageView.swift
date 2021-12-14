//
//  PageView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//

import SwiftUI



func getPageView(view: StoryPayload) -> some View {
    let isSecondChoice = {
        view.decision2 != ""
    }
    
    let isThirdChoice = {
        view.decision3 != ""
    }
    let isGameOver = {
        view.decision1 == Constants.GameOverPhrase
    }
    let defaults = UserDefaults.standard
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    return VStack {
        ZStack {
            ScrollView {
                Text(view.text)
                    .fontWeight(.light)
                    .if(isIPad) {
                        view in
                        view.font(.system(size: CGFloat(Constants.ipadFontSize)))
                    }.padding()
            }.zIndex(1)
            
            Image(view.image)
                .resizable()
                .scaledToFit()
        }
        Spacer()
        
        NavigationLink(destination:subviews [view.firstChoicePageName].navigationBarBackButtonHidden(isSecondChoice() || isGameOver())) {
            Text(view.decision1)
                .padding()
            
        }.simultaneousGesture(TapGesture().onEnded{
            if Constants.chapters.contains(view.firstChoicePageName) {
                let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                
                if let chapterOptional = chapterOptional {
                    var chapters = chapterOptional
                    chapters.append(view.firstChoicePageName)
                    defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                }
            }
            
            // MARK: If it is a gameover, then reset user defaults. Otherwise save the current page.
            if view.decision1 == Constants.GameOverPhrase {
                UserDefaults.standard.set(Part_1_Intro.PageName, forKey: DefaultsKeys.currentPage)
            } else {
                defaults.set(view.firstChoicePageName, forKey: DefaultsKeys.currentPage)
            }
            
        }) .padding()
        if(isSecondChoice()) {
            NavigationLink(destination: subviews[view.secondChoicePageName].navigationBarBackButtonHidden(true)) {
                Text(view.decision2)
                    .padding()
                
            }
            .simultaneousGesture(TapGesture().onEnded{
                if Constants.chapters.contains(view.secondChoicePageName) {
                    let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                    
                    if let chapterOptional = chapterOptional {
                        var chapters = chapterOptional
                        chapters.append(view.secondChoicePageName)
                        defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                    }
                }
                
                // MARK: If it is a gameover, then reset user defaults. Otherwise save the current page.
                if view.decision2 == Constants.GameOverPhrase {
                    UserDefaults.standard.set(Part_1_Intro.PageName, forKey: DefaultsKeys.currentPage)
                } else {
                    defaults.set(view.secondChoicePageName, forKey: DefaultsKeys.currentPage)
                }
                
            })
        }
        
        if(isThirdChoice()) {
            NavigationLink(destination: subviews[view.thirdChoicePageName].navigationBarBackButtonHidden(true)) {
                Text(view.decision3)
                    .padding()
                
            }
            .simultaneousGesture(TapGesture().onEnded{
                if Constants.chapters.contains(view.thirdChoicePageName) {
                    let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                    
                    if let chapterOptional = chapterOptional {
                        var chapters = chapterOptional
                        chapters.append(view.thirdChoicePageName)
                        defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                    }
                }
                
                // MARK: If it is a gameover, then reset user defaults. Otherwise save the current page.
                if view.decision3 == Constants.GameOverPhrase {
                    UserDefaults.standard.set(Part_1_Intro.PageName, forKey: DefaultsKeys.currentPage)
                } else {
                    defaults.set(view.thirdChoicePageName, forKey: DefaultsKeys.currentPage)
                }
                
            })
        }
    }
    
}
struct DisplayView: View {
    @Binding var showMenu: Bool
    var view: StoryPayload
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        let tap = TapGesture()
            .onEnded {
                
                withAnimation {
                    self.showMenu = false
                }
            }
        return VStack {
            Button(action: {
                self.showMenu = true
            }) {
            }
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    
                    getPageView(view: view)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/1.25 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/1.75)
                            .transition(.move(edge: .leading))
                        
                        
                    }
                }.gesture(drag)
                    .gesture(tap)
            }
            .navigationBarTitle("Tales of Covarnius", displayMode: .inline)
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

