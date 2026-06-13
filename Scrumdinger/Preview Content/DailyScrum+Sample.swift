//
//  DailyScrum+Sample.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/13.
//

import Foundation
import ThemeKit

extension DailyScrum {
  static let sampleData: [DailyScrum] =
    [
      DailyScrum(
        title: "Design",
        attendees: [
          Attendee(name: "codeme"),
          Attendee(name: "josevseb"),
          Attendee(name: "sweetpad"),
          Attendee(name: "workbench"),
        ],
        lengthInMinutes: 10,
        theme: .yellow),
      DailyScrum(
        title: "App Dev",
        attendees: [
          Attendee(name: "codeme"),
          Attendee(name: "josevseb"),
          Attendee(name: "sweetpad"),
          Attendee(name: "workbench"),
        ],
        lengthInMinutes: 5,
        theme: .orange),
      DailyScrum(
        title: "Web Dev",
        attendees: [
          Attendee(name: "codeme"),
          Attendee(name: "josevseb"),
          Attendee(name: "sweetpad"),
          Attendee(name: "workbench"),
        ],
        lengthInMinutes: 5,
        theme: .poppy),
    ]
}
