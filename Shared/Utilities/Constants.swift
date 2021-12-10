//
//  Constants.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//

import Foundation
import SwiftUI
struct Constants {
    static let ipadFontSize = 24
    static let ContinuePhrase = "Keep Going"
    static let GameOverPhrase = "GAME OVER"
    
    static let ChapterOne = "Intro"
    static let ForkInTheRoad = "Fork In The Road"
    

}
enum subviews {
  @ViewBuilder static subscript(string: String) -> some View {
      
    switch string {
    case "Part_1_Intro":
      Part_1_Intro()
    case "Part_1_Run_Away":
        Part_1_Run_Away()
    case "Part_1_See_What_In_The_Sky":
        Part_1_See_What_In_The_Sky()
    case "Part_2_Run_Away":
        Part_2_Run_Away()
    case "Part_4_See_Whats_In_The_Sky":
        Part_4_See_Whats_In_The_Sky()
    case "Part_3_See_Whats_In_The_Sky":
        Part_3_See_Whats_In_The_Sky()
    case "Part_2_See_Whats_In_The_Sky":
        Part_2_See_Whats_In_The_Sky()
    case "Part_4_Fork_In_The_Road":
        Part_4_Fork_In_The_Road()
    case "Part_3_Fork_In_The_Road":
        Part_3_Fork_In_The_Road()
    case "Part_2_Fork_In_The_Road":
        Part_2_Fork_In_The_Road()
    case "Part_1_Fork_In_The_Road":
        Part_1_Fork_In_The_Road()
    case "Part_1_Dissect_My_Brains":
        Part_1_Dissect_My_Brains()
    case "Part_2_Dissect_My_Brains":
        Part_2_Dissect_My_Brains()
    case "Bright_Green":
        Bright_Green()
    case "Went_Home":
        Went_Home()

    default:
      fatalError()
    }
  }
}
