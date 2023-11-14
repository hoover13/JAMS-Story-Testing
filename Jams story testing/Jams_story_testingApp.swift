//
//  Jams_story_testingApp.swift
//  Jams story testing
//
//  Created by Hoover on 11/11/23.
//

import SwiftUI

@main
struct Jams_story_testingApp: App {
//    @StateObject private var chapterUnlocker = ChapterUnlocker()
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(ChapterUnlocker())
        }
    }
}
