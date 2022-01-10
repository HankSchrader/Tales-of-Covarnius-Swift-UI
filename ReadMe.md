# ReadMe

Tales of Covarnius is a Choose Your Own Adventure style app. It is geared towards middle graders aged 9 to 12.

Author: Sara and Erik Mikac

Illustrator: Sara Mikac

Programmer: Erik Mikac

## Overview

Front End: Swift UI

Back End: UserDefaults (local storage.)

IDE: Xcode

Testing: Manual via TestFlight. No Unit testing at this time.

GitHub: @HankSchrader

## Topics

### File Structure

- ToC is divided into three folders: View, Model, and ViewModel. (MVVM is standard SwiftUI design pattern. More Info: https://www.appypie.com/mvvm-swiftui-how-to#SwiftUI)
- The View is each chapter. There is one View per page.
- The Model is the data structure. There is a story payload, which is fed into the View Model. There is a Chapter model, which is used exclusively for persisting and navigating via the Side Menu.
- The ViewModel binds the StoryPayload Model to each View.
    - The ViewModel is passed a StoryPayload which contains all possible decisions and Pointers to the next View.
    - The ViewModel takes the information and passes it into each view.
    - The view displays the information passed in from the Model.
    - The model is mutated by user decision points.


- The Constants folder contains an @ViewBuilder that determines which view is created next. Is is a Key Value pair. The Key is always an attribute of the StoryPayload Model

### ViewNavigationController

ViewNavigationController is a massive case statement Swift users to determine the next page. The user makes a decision which then sends a point to the SubView Enum. The next View Generated is the one matched in the case statement.

### Flow

Build Payload on Page initialization --> User Makes a Decision --> Pass decision into PageView Model (This is a ZStack to hold Menu and Base View) --> Pass into BaseView  ViewModel -> Check decision against <strong>subview enum</strong> -> Generate user decision --> Repeat.
