//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/13.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
