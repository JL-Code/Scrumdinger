//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/13.
//

import Foundation
import ThemeKit

/// 每日站会
struct DailyScrum: Identifiable, Sendable {
  let id: UUID
  var title: String
  var attendees: [Attendee]
  var lengthInMinutes: Int
  var lengthInMinutesAsDouble: Double {
    get {
      Double(lengthInMinutes)
    }
    set {
      lengthInMinutes = Int(newValue)
    }
  }
  var theme: Theme

  init(id: UUID = UUID(), title: String, attendees: [Attendee], lengthInMinutes: Int, theme: Theme)
  {
    self.id = id
    self.title = title
    self.attendees = attendees
    self.lengthInMinutes = lengthInMinutes
    self.theme = theme
  }
}

extension DailyScrum {
  struct Attendee: Identifiable, Sendable {
    let id: UUID
    var name: String

    init(id: UUID = UUID(), name: String) {
      self.id = id
      self.name = name
    }
  }

  static var emptyScrum: DailyScrum {
    DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
  }
}
