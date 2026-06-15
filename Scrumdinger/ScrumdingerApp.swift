//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/13.
//

import SwiftData
import SwiftUI

@main
struct ScrumdingerApp: App {

    var body: some Scene {
        WindowGroup {
            ScrumsView()
        }
        .modelContainer(for: DailyScrum.self)
    }
}
