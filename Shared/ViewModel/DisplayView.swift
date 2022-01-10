//
//  PageView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//
import SwiftUI

struct DisplayView: View {
    @Binding var showMenu: Bool
    @State private var showingAlert = false
    @StateObject var im = ImageModel()
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
            // Hamburger Button
            Button(action: {
                self.showMenu = true
            }) {
            }
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    BaseView(view: view)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width/1.25 : 0)
                    .disabled(self.showMenu ? true : false)
                    .environmentObject(self.im)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/1.75)
                            .transition(.move(edge: .leading))
                            .environmentObject(self.im)
                        
                    }
                }.gesture(drag)
                    .gesture(tap)
                    .environmentObject(self.im)
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
